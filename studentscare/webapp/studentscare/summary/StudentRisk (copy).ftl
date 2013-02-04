<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->

<!--
<h1>${uiLabelMap.ProductSearchResultsWithIdValue}: ${idValue?if_exists}</h1>
<#if !goodIdentifications?has_content && !idProduct?has_content>
  <br />
  <h2>&nbsp;${uiLabelMap.ProductNoResultsFound}.</h2>
<#else/>
-->
  <table cellspacing="0" class="basic-table">
<!--
    <#assign rowClass = "1">
    <#if idProduct?has_content>
-->
    <tr valign="middle"<!--<#if rowClass == "1">--> class="alternate-row"<!--</#if>-->>
        <td>No.</td>
        <td>Fullname</td>
        <td>Classroom</td>
        <td>Status</td>
    </tr>
    <!--
    </#if>           
    <#list goodIdentifications as goodIdentification>
        <#-- toggle the row color -->
        <#if rowClass == "2">
          <#assign rowClass = "1">
        <#else>
          <#assign rowClass = "2">
        </#if>
        <#assign product = goodIdentification.getRelatedOneCache("Product")/>
        <#assign goodIdentificationType = goodIdentification.getRelatedOneCache("GoodIdentificationType")/>
    -->
        <tr valign="middle"<!--<#if rowClass == "1">--> class="alternate-row"<!--</#if>-->>
            <td>No.</td>
            <td>Fullname</td>
            <td>Classroom</td>
            <td>Status</td>
        </tr>
    <!--
    </#list>
    -->
  </table>
<!--
</#if>
-->
