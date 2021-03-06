<html>
    <head>
        <title>Welcome to Neddick</title>
          <meta name="layout" content="admin" />
          <nav:resources />
    </head>
    <body>
          <g:if test="${flash.message}">
               <div class="flash" style="padding-top:15px;color:red;">
                    ${flash.message}
               </div>
          </g:if>
          <div style="margin-left:147px;margin-top:35px;">
          Create New Channel
          <g:form action="save" controller="channel">
               <dl>
                    <dt style="margin-top:7px;">
                         <label for="channelName">Name:</label>
                    </dt>
                    <dd>
                         <g:textField name="channelName"></g:textField>
                    </dd>
                    <dt style="margin-top:7px;">
                         <label for="channelDescription">Description:</label>
                    </dt>
                    <dd>
                         <g:textField name="channelDescription"></g:textField>
                    </dd>
                    
                    <dt style="margin-top:7px;">
                         <label for="privateChannel">Private Channel:</label>
                    </dt>
                    <dd>
                         <g:checkBox name="privateChannel" />
                    </dd>                    
                    
                    <dt>
                         <label for="datasources">DataSources</label></dt>
                    <dd>                               
                         <g:select name="datasources" from="${availableDatasources}" optionKey="id" optionValue="description" multiple="true"></g:select> 
                    </dd> 
                    <dt>
                         <label for="aggregateChannels">Aggregate Channels</label></dt>
                    <dd>                               
                         <g:select name="aggregateChannels" from="${availableChannels}" optionKey="id" optionValue="name" multiple="true"></g:select> 
                    </dd> 

                    
                    <dt style="margin-top:7px;"></dt>
                    <dd><g:submitButton name="Save" /></dd>
                    
               </dl>
          </g:form>
          </div>
          
     </body>
</html>