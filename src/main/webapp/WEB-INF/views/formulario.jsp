<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!doctype html>
<html lang=pt-br">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-tagsinput.css">
<link rel="stylesheet"
	href='<spring:url value="https://fonts.googleapis.com/icon?family=Material+Icons"/>'>

<link href='<spring:url value="css/hide-show-fields-form.css" />'
	rel="stylesheet" />
<link rel="stylesheet" href='<spring:url value="css/tags-style.css" />'>


<link rel="stylesheet"
	href='<spring:url value="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css"/>'>




<title>Formulário</title>
<link rel="shortcut icon" href="images/qintess.png" type="image/x-png">

<spring:url value="/salva" var="salva"></spring:url>
<spring:url value="/limpar" var="limpar"></spring:url>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<br>
	<form action="${salva}" modelAttribute="usuario"
		class="container theme-showcase" role="main" id="needs-validation">
		<input style="visibility: hidden;" name="nome" value="<sec:authentication
					property="principal.username" />">
		<div class="accordion" id="accordionExample">
			<div class="card">
				<div class="card-header" id="headingOne">
					<h2 class="mb-0">
						<button class="btn btn-lg btn-link" id="conhecimentos"
							type="button" data-toggle="collapse" data-target="#collapse1"
							aria-expanded="true" aria-controls="collapse1">
							<img src='<c:url value="images/expand-button.png"/>'
								style="width: 32px;">
						</button>
						<label id="conheci" style="color: white">Profissional</label>
					</h2>
				</div>
				<div id="collapse1" class="collapse show"
					aria-labelledby="collapse1" data-parent="#accordionExample">
					<div class="card-body" style="background-color: #FFFFFF">
						<div class="form-row">
							<div class="col-md-6 mb-3">
								<label for="validationCustom02">Area de atuação:</label>
								<div class="mb-3">
									<div class="selectpicker">
										<select style="background-color: #e9ecef"
											class="btn dropdown-toggle col-md-12"
											name="outras_tecnologias" id="tecnico_ou_nao">
											<option value="Sim">Técnica</option>
											<option value="Não">Outras atividades</option>
										</select>
									</div>
								</div>
								<div class="invalid-feedback">*Campo obrigatório.</div>
							</div>

							<div class="col-md-6 mb-3">
								<div class="atividades">
									<label for="validationCustomUsername" id="atividade_label">Escreva
										as atividades que executa:</label>
									<div class="input-group">
										<input type="text" class="form-control" data-role="tagsinput"
											id="atividades_input" name="outras_ativ" />
										<button type="button" class="btn btn-sm btn-link"
											id="atividades_btn" data-toggle="popover"
											data-placement="top"
											data-content="Após escrever, pressione ENTER para salvar">
											<i class="material-icons">help_outline</i>
										</button>
										<div class="invalid-feedback">*Campo obrigatório.</div>
									</div>
								</div>
								<div class="tecnologia">
									<label for="validationCustomUsername">Escreva a
										tecnologia que executa:</label>
									<div class="form-group">
										<input type="text" class="form-control" id="tecnologia_input"
											name="principal_tec" />
										<div class="invalid-feedback">*Campo obrigatório.</div>
									</div>
								</div>
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-6 mb-3">
								<label for="validationCustom04">Tempo de Experiência</label>
								<div class="mb-3">
									<select class="btn btn-light dropdown-toggle col-md-12"
										name="tempo_experiencia" required>
										<option value="1-2">1-2 Anos</option>
										<option value="3-5">3-5 Anos</option>
										<option value="mais que 5">Mais de 5 Anos</option>
									</select>
								</div>
								<div class="invalid-feedback">*Campo obrigatório.</div>
							</div>

							<div class="col-md-6 mb-3">
								<label for="validationCustomUsername">Quais benefícios
									gostaria de ter ?</label>
								<div class="input-group">
									<input type="text" class="form-control" data-role="tagsinput"
										id="beneficios_input" name="beneficios" />
									<button type="button" class="btn btn-sm btn-link"
										id="beneficios_btn" data-toggle="popover" data-placement="top"
										data-content="Após escrever, pressione ENTER para salvar">
										<i class="material-icons">help_outline</i>
									</button>
									<div class="invalid-feedback">*Campo obrigatório.</div>
								</div>
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-6 mb-3">
								<!-- 2º Deu ruim, select multiple -->
								<label for="validationCustom02">Possui restrições no
									local de atuação ?</label>
								<div class="mb-3">
									<div class="selectpicker">
										<select style="background-color: #e9ecef"
											class="btn dropdown-toggle col-md-12" name="restricao_local"
											id="restricao_local_select" required>
											<option value="Não">Não</option>
											<option value="Sim">Sim</option>
										</select>
									</div>
								</div>
								<div class="invalid-feedback">*Campo obrigatório.</div>
							</div>

							<div class="col-md-6 mb-3">
								<label for="validationCustomUsername">Quais ?</label>
								<div class="input-group">
									<input type="text" class="form-control" data-role="tagsinput"
										id="restricao_local_input" name="restricao" disabled />
									<button type="button" class="btn btn-sm btn-link"
										id="restricao_local_btn" data-toggle="popover"
										data-placement="top"
										data-content="Após escrever, pressione ENTER para salvar"
										disabled>
										<i class="material-icons">help_outline</i>
									</button>
									<div class="invalid-feedback">*Campo obrigatório.</div>
								</div>
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-6 mb-3">
								<!-- 2º Deu ruim, select multiple -->
								<label for="validationCustom02">Possui interesse de
									atuar em outra área ?</label>
								<div class="mb-3">
									<div class="selectpicker">
										<select style="background-color: #e9ecef"
											class="btn dropdown-toggle col-md-12" name="restricao_local"
											id="interesse_outra_area_select" required>
											<option value="Não">Não</option>
											<option value="Sim">Sim</option>
										</select>
									</div>
								</div>
								<div class="invalid-feedback">*Campo obrigatório.</div>
							</div>

							<div class="col-md-6 mb-3">
								<label for="validationCustomUsername">Quais ?</label>
								<div class="input-group">
									<input type="text" class="form-control" data-role="tagsinput"
										id="interesse_outra_area_input" name="interesse_outra_area"
										disabled />
									<button type="button" class="btn btn-sm btn-link"
										id="interesse_outra_area_btn" data-toggle="popover"
										data-placement="top"
										data-content="Após escrever, pressione ENTER para salvar"
										disabled>
										<i class="material-icons">help_outline</i>
									</button>
									<div class="invalid-feedback">*Campo obrigatório.</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header" id="heading2">
					<h2 class="mb-0">
						<button class="btn btn-lg btn-link" id="profissional"
							type="button" data-toggle="collapse" data-target="#collapse2"
							aria-expanded="true" aria-controls="collapse2">
							<img src='<c:url value="images/expand-button.png"/>'
								style="width: 32px;">
						</button>
						<label style="color: white">Conhecimentos</label>
					</h2>
				</div>

				<div id="collapse2" class="collapse" aria-labelledby="heading2"
					data-parent="#accordionExample">
					<div class="card-body" style="background-color: #FFFFFF">
						<div class="form-row">
							<div class="col-md-6 mb-3">
								<label for="validationCustom03">Formação Acadêmica</label>
								<div class="selectpicker">
									<select class="btn btn-light dropdown-toggle col-md-12"
										name="formacao" required>
										<c:forEach items="${formacoes}" var="formacao">
											<option value="${formacao.id}">${formacao.nome}</option>
										</c:forEach>
									</select>
								</div>
							</div>

							<div class="col-md-6 mb-3">
								<div class="form-group">
									<label for="validationCustom03">Idiomas</label>
									<div class="idioma_normal">
										<select class="selectpicker col-md-12" multiple
											data-selected-text-format="count"
											title="Selecione as opções desejadas" name="idiomas">
											<c:forEach items="${idiomas}" var="idioma">
												<option value="${idioma.id}">${idioma.nome}</option>
											</c:forEach>
										</select>
									</div>
									<div class="invalid-feedback">*Campo obrigatório.</div>
								</div>
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-6 mb-3">
								<label for="validationCustom02">Possui conhecimento em
									outra tecnologia ?</label>
								<div class="mb-3">
									<div class="selectpicker">
										<select style="background-color: #e9ecef"
											class="btn dropdown-toggle col-md-12"
											name="outras_tecnologias" id="conhecimento_outras_tec_select"
											required>
											<option value="Não">Não</option>
											<option value="Sim">Sim</option>
										</select>
									</div>
								</div>
								<div class="invalid-feedback">*Campo obrigatório.</div>
							</div>

							<div class="col-md-6 mb-3">
								<label for="validationCustomUsername">Quais ?</label>
								<div class="input-group">
									<input type="text" class="form-control" data-role="tagsinput"
										id="possui_tec_input" name="outras_tec" disabled />
									<button type="button" class="btn btn-sm btn-link"
										id="possui_tec_btn" data-toggle="popover" data-placement="top"
										data-content="Após escrever, pressione ENTER para salvar"
										placeholder="ENTER para adicionar" disabled>
										<i class="material-icons">help_outline</i>
									</button>
									<div class="invalid-feedback">*Campo obrigatório.</div>
								</div>
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-6 mb-3">
								<label for="validationCustom02">Possui certificações ?</label>
								<div class="mb-3">
									<div class="selectpicker">
										<select style="background-color: #e9ecef"
											class="btn dropdown-toggle col-md-12"
											name="possui_certificacoes" id="possui_certificados_select"
											required>
											<option value="Não" selected>Não</option>
											<option value="Sim">Sim</option>
										</select>
									</div>
								</div>
								<div class="invalid-feedback">*Campo obrigatório.</div>
							</div>

							<div class="col-md-6 mb-3">
								<label for="validationCustomUsername">Quais ?</label>
								<div class="input-group" id="certi_DIV">
									<input type="text" class="form-control" data-role="tagsinput"
										id="possui_certificados_input" name="certificacoes" disabled />
									<button type="button" class="btn btn-sm btn-link"
										id="possui_certificados_btn" data-toggle="popover"
										data-placement="top"
										data-content="Após escrever, pressione ENTER para salvar"
										disabled>
										<i class="material-icons">help_outline</i>
									</button>
									<div class="invalid-feedback">*Campo obrigatório.</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="card">
				<div class="card-header" id="heading3">
					<h2 class="mb-0">
						<button class="btn btn-lg btn-link" id="conhecimentos"
							type="button" data-toggle="collapse" data-target="#collapse3"
							aria-expanded="true" aria-controls="collapse3">
							<img src='<c:url value="images/expand-button.png"/>'
								style="width: 32px;">
						</button>
						<label style="color: white">Pessoal</label>
					</h2>
				</div>

				<div id="collapse3" class="collapse" aria-labelledby="heading3"
					data-parent="#accordionExample">
					<div class="card-body" style="background-color: #FFFFFF">
						<div class="form-row">
							<div class="col-md-4 mb-3">
								<label for="validationCustom02">Possui filhos ?</label>
								<div class="mb-3">
									<div class="selectpicker">
										<select style="background-color: #e9ecef"
											class="btn dropdown-toggle col-md-12" name="possui_filhos"
											id="possui_filhos_select" required>
											<option value="Não" selected>Não</option>
											<option value="Sim">Sim</option>
										</select>
									</div>
								</div>
								<div class="invalid-feedback">*Campo obrigatório.</div>
							</div>

							<div class="col-md-4 mb-3" id="quantFilhosDiv">
								<label for="quantFilhos">Quantidade de filhos:</label>
								<div class="mb-3">
									<input type="number" min="1" class="form-control"
										id="quant_filhos_input" name="qtd_filhos" />
								</div>
								<div class="invalid-feedback">*Campo obrigatório.</div>
							</div>

							<div class="col-md-4 mb-3">
								<label for="validationCustomUsername">Idade dos filhos:</label>
								<div class="input-group">
									<input type="text" class="form-control" data-role="tagsinput"
										id="idade_filhos_input" name="idade_filhos" disabled />
									<button type="button" class="btn btn-sm btn-link"
										id="idade_filhos_btn" data-toggle="popover"
										data-placement="top"
										data-content="Após escrever, pressione ENTER para salvar"
										disabled>
										<i class="material-icons">help_outline</i>
									</button>
									<div class="invalid-feedback">*Campo obrigatório.</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="card">
				<div class="card-header" id="heading4">
					<h2 class="mb-0">
						<button class="btn btn-lg btn-link" id="interesse" type="button"
							data-toggle="collapse" data-target="#collapse4"
							aria-expanded="true" aria-controls="collapse4">
							<img src='<c:url value="images/expand-button.png"/>'
								style="width: 32px;">
						</button>
						<label style="color: white; text-align: right;">Interesse
							em aprender</label>
					</h2>
				</div>

				<div id="collapse4" class="collapse" aria-labelledby="heading4"
					data-parent="#accordionExample">
					<div class="card-body" style="background-color: #FFFFFF">
						<div class="form-row">
							<div class="col-md-6 mb-3">
								<label for="validationCustomUsername">Tecnologias que
									deseja aprender:(Opcional)</label>
								<div class="input-group">
									<input type="text" class="form-control" data-role="tagsinput"
										id="interesse_aprender_tec_input" name="aprender_tec" />
									<button type="button" class="btn btn-sm btn-link"
										id="interesse_aprender_tec_btn" data-toggle="popover"
										data-placement="top"
										data-content="Após escrever, pressione ENTER para salvar">
										<i class="material-icons">help_outline</i>
									</button>
									<div class="invalid-feedback">*Campo obrigatório.</div>
								</div>
							</div>

							<div class="col-md-6 mb-3">
								<div class="form-group">
									<label for="validationCustom03">Idiomas que deseja
										aprender:(Opcional)</label>
									<div class="idioma">
										<select class="selectpicker col-md-12" multiple
											data-selected-text-format="count"
											id="interesse_aprender_idioma_select"
											title="Selecione as opções desejadas" name="aprender_idioma">
											<c:forEach items="${idiomas}" var="idioma">
												<option value="${idioma.id}">${idioma.nome}</option>
											</c:forEach>
										</select>
									</div>
									<div class="invalid-feedback">*Campo obrigatório.</div>
								</div>
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-6 mb-3">
								<div class="form-group">
									<label for="validationCustom03">Cursos comportamentais
										que deseja aprender:(Opcional)</label>
									<div class="comportamentais">
										<select class="selectpicker col-md-12" multiple
											data-selected-text-format="count"
											title="Selecione as opções desejadas"
											name="aprender_comportamental">
											<c:forEach items="${comportamentais}" var="comportamental">
												<option value="${comportamental.id}">${comportamental.nome}</option>
											</c:forEach>
										</select>
									</div>
									<div class="invalid-feedback">*Campo obrigatório.</div>
								</div>
							</div>

							<div class="col-md-6 mb-3">
								<div class="form-group">
									<label for="validationCustom03">Outros:(Opcional)</label>
									<div class="comportamentais">
										<select class="selectpicker col-md-12" multiple
											data-selected-text-format="count"
											title="Selecione as opções desejadas"
											name="aprender_off_topic">
											<c:forEach items="${offtopics}" var="offtopic">
												<option value="${offtopic.id}">${offtopic.nome}</option>
											</c:forEach>
										</select>
									</div>
									<div class="invalid-feedback">*Campo obrigatório.</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="card">
				<div class="card-header" id="heading5">
					<h2 class="mb-0">
						<button class="btn btn-lg btn-link" id="interesse-ensinar"
							type="button" data-toggle="collapse" data-target="#collapse5"
							aria-expanded="true" aria-controls="collapse5">
							<img src='<c:url value="images/expand-button.png"/>'
								style="width: 32px;">
						</button>
						<label style="color: white; text-align: right;">Interesse
							em ensinar</label>
					</h2>
				</div>

				<div id="collapse5" class="collapse" aria-labelledby="heading5"
					data-parent="#accordionExample">
					<div class="card-body" style="background-color: #FFFFFF">
						<div class="form-row">
							<div class="col-md-6 mb-3">
								<label for="validationCustomUsername">Tecnologias que
									deseja ensinar:(Opcional)</label>
								<div class="input-group">
									<input type="text" class="form-control" data-role="tagsinput"
										id="interesse_ensinar_tec_input" name="ensinar_tec" />
									<button type="button" class="btn btn-sm btn-link"
										id="interesse_ensinar_tec_btn" data-toggle="popover"
										data-placement="top"
										data-content="Após escrever, pressione ENTER para salvar">
										<i class="material-icons">help_outline</i>
									</button>
									<div class="invalid-feedback">*Campo obrigatório.</div>
								</div>
							</div>
							<div class="col-md-6 mb-3">
								<div class="form-group">
									<label for="validationCustom03">Idiomas que deseja
										ensinar:(Opcional)</label>
									<div class="idioma">
										<select class="selectpicker col-md-12" multiple
											data-selected-text-format="count"
											id="interesse_ensinar_idiomas_select"
											title="Selecione as opções desejadas" name="ensinar_idioma">
											<c:forEach items="${idiomas}" var="idioma">
												<option value="${idioma.id}">${idioma.nome}</option>
											</c:forEach>
										</select>
									</div>
									<div class="invalid-feedback">*Campo obrigatório.</div>
								</div>
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-6 mb-3">
								<div class="form-group">
									<label for="validationCustom03">Cursos comportamentais
										que deseja ensinar:(Opcional)</label>
									<div class="comportamentais">
										<select class="selectpicker col-md-12" multiple
											data-selected-text-format="count"
											title="Selecione as opções desejadas"
											name="ensinar_comportamental">
											<c:forEach items="${comportamentais}" var="comportamental">
												<option value="${comportamental.id}">${comportamental.nome}</option>
											</c:forEach>
										</select>
									</div>
									<div class="invalid-feedback">*Campo obrigatório.</div>
								</div>
							</div>
							<div class="col-md-6 mb-3">
								<div class="form-group">
									<label for="validationCustom03">Outros:(Opcional)</label>
									<div class="comportamentais">
										<select class="selectpicker col-md-12" multiple
											data-selected-text-format="count"
											title="Selecione as opções desejadas"
											name="ensinar_off_topic">
											<c:forEach items="${offtopics}" var="offtopic">
												<option value="${offtopic.id}">${offtopic.nome}</option>
											</c:forEach>
										</select>
									</div>
									<div class="invalid-feedback">*Campo obrigatório.</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-12 mb-3">
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value=""
					id="concordoForm" required> <label class="form-check-label"
					for="concordoForm"> Concordo com os termos e condições </label>
				<div class="invalid-feedback">Você deve concordar, antes de
					continuar.</div>
			</div>
		</div>
		<div class="botoes">
			<a class="btn btn-outline-primary btn-block limpar" name="limpar"
				id="limpar" href="${limpar}">Limpar</a> <br>
			<div class="enviar_div">
				<button class="btn btn-success btn-block enviar"
					name="enviar" id="enviar" type="submit" disabled>Enviar</button>
			</div>
			<br>
		</div>
		<!-- </form> -->
	</form>
	<!-- jQuery-->
	<!--  JavaScript -->
	<script src="js/bootstrap-tagsinput.min.js"></script>
	<script
		src='<spring:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"/>'></script>
	<script src='<spring:url value="js/popper.min.js"/>'></script>
	<script src='<spring:url value="js/bootstrap.min.js"/>'></script>
	<script src='<spring:url value="js/bootstrap-select.min.js"/>'></script>
	<script src='<spring:url value="js/bootstrap-bundle.js" />'></script>
	<script src='<spring:url value="js/bootstrap-bundle.min.js" />'></script>
	<script src='<spring:url value="js/popover.js" />'></script>
	<script src='<spring:url value="js/bootstrap-tagsinput.js" />'></script>
	<script src='<spring:url value="js/hide-show-fields-form.js"/>'></script>
</body>
</html>