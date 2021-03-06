<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<sf:form action="${pageContext.request.contextPath}/pageForm/save" method="post" commandName="page" cssClass="form-horizontal" role="form">

	<div class="form-group">
		<label class="col-sm-3 control-label no-padding-right" for="pageId"> ID </label>
		<div class="col-sm-9">
			<sf:input type="text" placeholder="ID" class="form-control" path="pageId" readonly="true" />
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-3 control-label no-padding-right" for="pagePageId"> PAGE FATHER </label>
		<div class="col-sm-9">
			<sf:select path="pagePageId" class="chosen-select col-xs-11" data-placeholder="Choose a Page Father o Master...">
				<sf:option value="NONE" label="---- Select ----" />
				<sf:options items="${pagesMasterList}" itemLabel="pageDisplay" itemValue="pageId" />
			</sf:select>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-3 control-label no-padding-right" for="pageDisplay"> Name </label>
		<div class="col-sm-9">
			<sf:input type="text" class="form-control" path="pageDisplay" />
		</div>
	</div>
	<%-- <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="pageNomenclature"> Nomenclature </label>
            <div class="col-sm-9">
                <sf:input type="text" class="col-xs-11" path="pageNomenclature" />
            </div>
        </div> --%>
	<div class="form-group">
		<label class="col-sm-3 control-label no-padding-right" for="pageDescription"> Descripcion </label>
		<div class="col-sm-9">
			<sf:textarea class="form-control" path="pageDescription" rows="3" />
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-3 control-label no-padding-right" for="pageUrl"> Url </label>
		<div class="col-sm-9">
			<sf:input type="text" class="form-control" path="pageUrl" />
		</div>
	</div>

	<div class="form-group">
		<label class="col-sm-3 control-label no-padding-right" for="pageEntities">Entities</label>

		<div class="col-sm-9">
			<!-- #section:plugins/input.multiselect -->
			<sf:select path="pageEntities" class="form-control dual_select" multiple="true" name="duallistbox_demo1[]" >
				<c:forEach items="${entitiesList}" var="ent">
					<c:set var="isSelected" value="false" />
					<c:forEach items="${page.pageEntities}" var="pagEnt">
						<c:if test="${pagEnt.paenEnttId.enttId eq ent.enttId}">
							<c:set var="isSelected" value="true" />
							<c:set var="idPageEntity" value="${pagEnt.paenId}" />
						</c:if>
					</c:forEach>
					<c:choose>
						<c:when test="${isSelected}">
							<option value="${idPageEntity}|${ent.enttId}" selected="selected">${ent.enttName}</option>
						</c:when>
						<c:otherwise>
							<option value="NEW|${ent.enttId}">${ent.enttName} hola</option>
						</c:otherwise>
					</c:choose>
				</c:forEach> 
				<%-- <sf:options items="${entitiesList}" itemLabel="enttName" itemValue="idAsString" /> --%>
			</sf:select>

			<!-- /section:plugins/input.multiselect -->
		</div>
	</div>
	<%-- <div class="form-group">
        <label class="col-sm-3 control-label no-padding-right" for="food">Entities</label>

        <div class="col-sm-9">
            <!-- #section:plugins/input.multiselect -->
            <sf:select path="entities" class="multiselect" multiple="true">
                <!-- itemLabel="enttName" class="multiselect" itemValue="enttId" ${page.pageEntities}  -->
                <sf:options items="${entitiesList}" itemLabel="enttName" itemValue="enttId" />
            </sf:select>

            <!-- /section:plugins/input.multiselect -->
        </div>
    </div> --%>

	<div class="form-group">
		<label class="col-sm-3 control-label no-padding-right" for="pageActive"> ACTIVE </label>
		<div class="col-sm-9">
		  <div class="i-checks">
                  <label> 
                      <sf:checkbox path="pageActive" value="true" />
                      <i></i>
                  </label>
              </div>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-3 control-label no-padding-right" for="pageCreatedBy"> CREATED BY </label>
		<div class="col-sm-9">
			<sf:input type="text" class="form-control" path="pageCreatedBy" />
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-3 control-label no-padding-right" for="pageUpdateBy"> UPDATE BY </label>
		<div class="col-sm-9">
			<sf:input type="text" class="form-control" path="pageUpdateBy" />
		</div>
	</div>
</sf:form>


<script type="text/javascript">

	jQuery(function($) {
		/* $('.chosen-select').chosen({
            allow_single_deselect : true,
            width : "100%"
        });
        
        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green',
        });
        console.log("Entro al script ...");
        var demo1 = $('#pageEntities').bootstrapDualListbox({
            infoTextFiltered : '<span class="label label-purple label-lg">Filtered</span>',
            // preserveSelectionOnMove : 'moved',
            moveOnSelect : false,
            eventMoveOverride : true, // boolean, allows user to unbind default event behaviour
            // and run their own instead
            eventMoveAllOverride : true, // boolean, allows user to unbind default event
            // behaviour and run their own instead
            eventRemoveOverride : true, // boolean, allows user to unbind default event behaviour
            // and run their own instead
            eventRemoveAllOverride : true
        });

        var container1 = demo1.bootstrapDualListbox('getContainer');
        container1.find('.btn').addClass('btn-white btn-info btn-bold');

        demo1.trigger('bootstrapDualList box.refresh', true); 
        
        */
        
	});
	
	
</script>