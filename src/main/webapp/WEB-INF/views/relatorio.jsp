<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet"
	href='<spring:url value="css/bootstrap-table.css"/>'>
<link
	href='<spring:url value="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.css"/>'
	rel="stylesheet">
<link rel="stylesheet"
	href='<spring:url value="https://fonts.googleapis.com/icon?family=Material+Icons"/>'>
	<link rel="stylesheet" href='<spring:url value="https://use.fontawesome.com/releases/v5.6.3/css/all.css" />' integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

<title>Relatório</title>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<br>
	<div class="container">
		<div id="toolbar" class="select">
			<select class="form-control">
				<option value="">Exportar básico</option>
				<option value="all">Exportar tudo</option>
				<option value="selected">Selecionar o que deseja exportar</option>
			</select>
		</div>
		<table class="table table-bordered table-hover" id="mydatatable"
			data-locale="pt-BR" data-show-export="true"
			data-click-to-select="true" data-toggle="table"
			data-show-toggle="true" data-toolbar="#toolbar"
			data-show-columns="true" data-show-columns-toggle-all="true"
			data-pagination="true" data-search="true">
			<thead class="thead-dark">
				<tr>
					<th colspan="1" rowspan="2" data-field="state" data-checkbox="true"></th>
					<th rowspan="2" data-field="id"
						style="text-align: center">ID</th>
						<th colspan="1" rowspan="2" data-field="nome"
						style="text-align: center">Nome</th>
					<th colspan="2" style="text-align: center">Conhecimentos</th>
					<th colspan="7" style="text-align: center">Formação</th>
					<th colspan="3" style="text-align: center">Filhos</th>
					<th colspan="4" style="text-align: center">Interesse em
						Aprender</th>
					<th colspan="4" style="text-align: center">Interesse em
						Ensinar</th>
				</tr>
				<tr>
					<th colspan="auto" data-field="principal_tec" data-visible="false">Tec/Ativ
						Principal</th>
					<th colspan="auto" data-field="outras" data-visible="false"
						data-detail-formatter="outras_tecDetailFormatter">Outras
						Tecnologias</th>
					<th data-field="formacao"
						data-detail-formatter="formacaoDetailFormatter">Formação
						Acadêmica</th>
					<th colspan="auto" data-field="certificacao" data-visible="false"
						data-detail-formatter="certificacaoDetailFormatter">Certificações</th>
					<th data-field="experiencia"
						data-detail-formatter="experienciaDetailFormatter">Tempo de
						Experiência</th>
					<th colspan="auto" data-field="idiomas"
						data-detail-formatter="idiomasDetailFormatter">Idiomas</th>
					<th colspan="auto" data-field="restricoes" data-visible="false"
						data-detail-formatter="restricoesDetailFormatter">Restrições
						Local</th>
					<th colspan="auto" data-field="beneficios" data-visible="false"
						data-detail-formatter="restricoesDetailFormatter">Benefícios</th>
					<th colspan="auto" data-field="interesse_area" data-visible="false"
						data-detail-formatter="restricoesDetailFormatter">Interesse
						em outra área</th>
					<th data-field="possui_filhos" data-visible="false"
						data-detail-formatter="possui_filhosDetailFormatter">Possui
						filhos</th>
					<th data-field="qtd_filhos" data-visible="false"
						data-detail-formatter="qtd_filhosDetailFormatter">Quant
						filhos</th>
					<th colspan="auto" data-field="idade_filhos" data-visible="false"
						data-detail-formatter="idade_filhosDetailFormatter">Idade
						filhos</th>
					<th colspan="auto" data-field="interesse_tec" data-visible="false"
						data-detail-formatter="interesse_tecDetailFormatter">Tecnologia</th>
					<th colspan="auto" data-field="interesse_idioma"
						data-visible="false"
						data-detail-formatter="interesse_idiomaDetailFormatter">Idioma</th>
					<th colspan="auto" data-field="interesse_comport"
						data-visible="false"
						data-detail-formatter="interesse_comportDetailFormatter">Comportamental</th>
					<th colspan="auto" data-field="interesse_outros"
						data-visible="false"
						data-detail-formatter="interesse_outrosDetailFormatter">Outros</th>

					<th colspan="auto" data-field="ensinar_tec" data-visible="false"
						data-detail-formatter="ensinar_tecDetailFormatter">Tecnologia</th>
					<th colspan="auto" data-field="ensinar_idioma" data-visible="false"
						data-detail-formatter="ensinar_idiomaDetailFormatter">Idioma</th>
					<th colspan="auto" data-field="ensinar_comport"
						data-visible="false"
						data-detail-formatter="ensinar_comportDetailFormatter">Comportamental</th>
					<th colspan="auto" data-field="ensinar_outros" data-visible="false"
						data-detail-formatter="ensinar_outrosDetailFormatter">Outros</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${dados}" var="dado">
					<tr>
						<th></th>
						<th scope="row">${dado.id}</th>
						<th scope="row">${dado.nome}</th>
						<td><c:forEach items="${dado.principal_tec}" var="principal">
							${principal} <br>
							</c:forEach></td>
						<td><c:forEach items="${dado.outras_tec}" var="outras_tec">
							${outras_tec} <br>
							</c:forEach></td>
						<td>${dado.formacao.nome}</td>
						<td><c:forEach items="${dado.certificacoes}"
								var="certificado">
							${certificado} <br>
							</c:forEach></td>
						<td>${dado.tempo_experiencia }anos</td>
						<td><c:forEach items="${dado.idiomas}" var="idioma">
							${idioma.nome} <br>
							</c:forEach></td>
						<td><c:forEach items="${dado.restricao}" var="restri">
							${restri} <br>
							</c:forEach></td>
						<td><c:forEach items="${dado.beneficios}" var="beneficio">
							${beneficio} <br>
							</c:forEach></td>
						<td><c:forEach items="${dado.interesse_outra_area}"
								var="interesse_area">
							${interesse_area} <br>
							</c:forEach></td>
						<td>${dado.possui_filhos }</td>
						<td>${dado.qtd_filhos }</td>
						<td><c:forEach items="${dado.idade_filhos}" var="idade_filho">
							${idade_filho} <br>
							</c:forEach></td>
						<td><c:forEach items="${dado.aprender_tec}" var="tecAprender">
							${tecAprender} <br>
							</c:forEach></td>
						<td><c:forEach items="${dado.aprender_idioma}"
								var="idiomaAprender">
							${idiomaAprender.nome} <br>
							</c:forEach></td>
						<td><c:forEach items="${dado.aprender_comportamental}"
								var="comport_aprender">
							${comport_aprender.nome} <br>
							</c:forEach></td>
						<td><c:forEach items="${dado.aprender_off_topic}"
								var="off_aprender">
							${off_aprender.nome} <br>
							</c:forEach></td>

						<td><c:forEach items="${dado.ensinar_tec}" var="tecEnsinar">
							${tecEnsinar} <br>
							</c:forEach></td>
						<td><c:forEach items="${dado.ensinar_idioma}"
								var="idiomaEnsinar">
							${idiomaEnsinar.nome} <br>
							</c:forEach></td>
						<td><c:forEach items="${dado.ensinar_comportamental}"
								var="comport_ensinar">
							${comport_ensinar.nome} <br>
							</c:forEach></td>
						<td><c:forEach items="${dado.ensinar_off_topic}"
								var="off_ensinar">
							${off_ensinar.nome} <br>
							</c:forEach></td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th colspan="auto">Tec/Ativ Principal</th>
					<th colspan="auto"
						data-detail-formatter="outras_tecDetailFormatter">Outras
						Tecnologias</th>
					<th data-field="formacao"
						data-detail-formatter="formacaoDetailFormatter">Formação
						Acadêmica</th>
					<th colspan="auto" data-field="certificacao"
						data-detail-formatter="certificacaoDetailFormatter">Certificações</th>
					<th data-field="experiencia"
						data-detail-formatter="experienciaDetailFormatter">Tempo Exp</th>
					<th colspan="auto" data-field="idiomas"
						data-detail-formatter="idiomasDetailFormatter">Idiomas</th>
					<th colspan="auto" data-field="restricoes"
						data-detail-formatter="restricoesDetailFormatter">Restrições
						Local</th>
					<th colspan="auto" data-field="beneficios"
						data-detail-formatter="restricoesDetailFormatter">Benefícios</th>
					<th colspan="auto" data-field="beneficios"
						data-detail-formatter="restricoesDetailFormatter">Área</th>
					<th data-field="possui_filhos"
						data-detail-formatter="possui_filhosDetailFormatter">Filhos</th>
					<th data-field="qtd_filhos"
						data-detail-formatter="qtd_filhosDetailFormatter">Quant</th>
					<th colspan="auto" data-field="idade_filhos"
						data-detail-formatter="idade_filhosDetailFormatter">Idade</th>
					<th colspan="auto" data-field="interesse_tec"
						data-detail-formatter="interesse_tecDetailFormatter">Tecnologia</th>
					<th colspan="auto" data-field="interesse_idioma"
						data-detail-formatter="interesse_idiomaDetailFormatter">Idioma</th>
					<th colspan="auto" data-field="interesse_comport"
						data-detail-formatter="interesse_comportDetailFormatter">Comportamental</th>
					<th colspan="auto" data-field="interesse_outros"
						data-detail-formatter="interesse_outrosDetailFormatter">Outros</th>

					<th colspan="auto" data-field="ensinar_tec"
						data-detail-formatter="ensinar_tecDetailFormatter">Tecnologia</th>
					<th colspan="auto" data-field="ensinar_idioma"
						data-detail-formatter="ensinar_idiomaDetailFormatter">Idioma</th>
					<th colspan="auto" data-field="ensinar_comport"
						data-detail-formatter="ensinar_comportDetailFormatter">Comportamental</th>
					<th colspan="auto" data-field="ensinar_outros"
						data-detail-formatter="ensinar_outrosDetailFormatter">Outros</th>
				</tr>
			</tfoot>
		</table>
	</div>
	<!-- jQuery-->
	<!--  JavaScript -->

	<script
		src='<spring:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"/>'></script>
	<script
		src='<spring:url value="https://code.jquery.com/jquery-3.3.1.js"/>'></script>
	<script src='<spring:url value="js/popper.min.js" />'></script>
	<script src='<spring:url value="js/bootstrap.min.js"/>'></script>
	<script src='<spring:url value="js/bootstrap-table.js"/>'></script>
	<script
		src='<spring:url value="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.js"/>'></script>

	<script src='<spring:url value="js/table-scroll.js"/>'></script>
	<script
		src="https://unpkg.com/tableexport.jquery.plugin/tableExport.min.js"></script>
	<script
		src="https://unpkg.com/tableexport.jquery.plugin/libs/jsPDF/jspdf.min.js"></script>
	<script
		src="https://unpkg.com/tableexport.jquery.plugin/libs/jsPDF-AutoTable/jspdf.plugin.autotable.js"></script>
	<script
		src="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.js"></script>
	<script
		src='<spring:url value="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table-locale-all.min.js"/>'></script>
	<script
		src="https://unpkg.com/bootstrap-table@1.15.5/dist/extensions/export/bootstrap-table-export.min.js"></script>
</body>
</html>