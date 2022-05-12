		<xsl:stylesheet 
		version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
		xmlns:dp="http://www.datapower.com/extensions"
		xmlns:func="http://exslt.org/functions"
		xmlns:date="http://exslt.org/dates-and-times" 
		xmlns:bbog="http://bancodebogota.com/functions"
		xmlns:dpquery="http://www.datapower.com/param/query"
		xmlns:qnm="http://www.qnomy.com/Services"
		xmlns:wsa="http://www.w3.org/2005/08/addressing"
		xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
		extension-element-prefixes="func dp bbog" 
		exclude-result-prefixes="bbog dpquery xsi date">
	<xsl:output method="xml" encoding="UTF-8" />
	<!--- Banco de Bogota.  Todos los derechos reservados.
			- Prohibido su uso o distribucion sin autorizacion explicita de Banco de Bogota.
			-
			- XSL que realiza la consulta a QFlow del token con base en el usuario y clave para IDM 
			- Andres Gonzalez 
			- Ultima modificacion: 27-09-2019
	-->
	
	<!--Copy all message to send to QFlow-->
	<xsl:template match="@*|node()">

		<xsl:copy>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates/>
		</xsl:copy>

		<xsl:choose>
			<xsl:when test="contains(dp:variable('var://service/URI'),'/WSMovimientosICBS_GDA/AccountActivityInquirySvc')">
				<dp:set-variable 	name="'var://context/store/condicion'" 	value="'1'"/>
				<dp:set-variable 	name="'var://service/routing-url'"				value="'https://prd.gda.bancodebogota.com:9014/WSMovimientosICBS_GDA/AccountActivityInquirySvc'"/>
			</xsl:when>
			<xsl:when test="contains(dp:variable('var://service/URI'),'/WSConsultaGirosICBS_GDA/MoneyTransferInquirySvc')">
			<dp:set-variable 	name="'var://context/store/condicion'" 	value="'2'"/>
				<dp:set-variable 	name="'var://service/routing-url'"				value="'https://prd.gda.bancodebogota.com:9015/WSConsultaGirosICBS_GDA/MoneyTransferInquirySvc'"/>
			</xsl:when>			
			<xsl:when test="contains(dp:variable('var://service/URI'),'/WSArchivosEspecialesICBS_GDA/FIleStatusBBOGSvc')">
			<dp:set-variable 	name="'var://context/store/condicion'" 	value="'3'"/>
				<dp:set-variable 	name="'var://service/routing-url'"				value="'https://prd.gda.bancodebogota.com:9014/WSArchivosEspecialesICBS_GDA/FIleStatusBBOGSvc'"/>
			</xsl:when>
			<xsl:when test="contains(dp:variable('var://service/URI'),'/WSConsultaArchivosICBS_GDA/FileOtherChannels')">
			<dp:set-variable 	name="'var://context/store/condicion'" 	value="'4'"/>
				<dp:set-variable 	name="'var://service/routing-url'"				value="'https://prd.gda.bancodebogota.com:9015/WSConsultaArchivosICBS_GDA/FileOtherChannels'"/>
			</xsl:when>
			<xsl:when test="contains(dp:variable('var://service/URI'),'/WSTESICBS_GDA/TransferStatementSvc')">
			<dp:set-variable 	name="'var://context/store/condicion'" 	value="'5'"/>
				<dp:set-variable 	name="'var://service/routing-url'"	             value="'https://prd.gda.bancodebogota.com:9016/WSTESICBS_GDA/TransferStatementSvc'"/>
			</xsl:when>
			<xsl:when test="contains(dp:variable('var://service/URI'),'/WSCargaArchivosICBS_GDA/UploadFilesSvc')">
			<dp:set-variable 	name="'var://context/store/condicion'" 	value="'6'"/>
				<dp:set-variable 	name="'var://service/routing-url'"	             value="'https://prd.gda.bancodebogota.com:9015/WSCargaArchivosICBS_GDA/UploadFilesSvc'"/>
			</xsl:when>		
			<xsl:when test="contains(dp:variable('var://service/URI'),'/WSRecaudosICBS_GDA/DirectPaymentInquirySvc')">
			<dp:set-variable 	name="'var://context/store/condicion'" 	value="'7'"/>
				<dp:set-variable 	name="'var://service/routing-url'"	             value="'https://prd.gda.bancodebogota.com:9014/WSRecaudosICBS_GDA/DirectPaymentInquirySvc'"/>
			</xsl:when>		
			<xsl:when test="contains(dp:variable('var://service/URI'),'/WSInscripcionProductosICBS_GDA/TransferAccountsAdminSvcService')">
			<dp:set-variable 	name="'var://context/store/condicion'" 	value="'8'"/>
				<dp:set-variable 	name="'var://service/routing-url'"	             value="'https://prd.gda.bancodebogota.com:9015/WSInscripcionProductosICBS_GDA/TransferAccountsAdminSvcService'"/>
			</xsl:when>				
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>