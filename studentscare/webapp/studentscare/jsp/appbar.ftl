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
<#if (requestAttributes.externalLoginKey)?exists><#assign externalKeyParam = "?externalLoginKey=" + requestAttributes.externalLoginKey?if_exists></#if>
<#if (externalLoginKey)?exists><#assign externalKeyParam = "?externalLoginKey=" + requestAttributes.externalLoginKey?if_exists></#if>
<#assign ofbizServerName = application.getAttribute("_serverId")?default("default-server")>
<#assign contextPath = request.getContextPath()>
<#assign displayApps = Static["org.ofbiz.base.component.ComponentConfig"].getAppBarWebInfos(ofbizServerName, "main")>

<#if userLogin?has_content>
        <div id="main-nav">
            <h2 class="contracted">${uiLabelMap.CommonApplications}</h2>
            <div id="header-nav" class="clearfix" style="display:none">
                <ul>
<!--
                <li><h4>${uiLabelMap.CommonPrimaryApps}</h4></li>
-->
				
				<ul class="v_menu">
			 	<li><a<#if selected> class="current-section"</#if> href="#" title="${uiLabelMap.AcademyManagement}">${uiLabelMap.AcademyManagement}</a>
					<ul>
						<li<#if selected> class="selected"</#if>><a href="/manufacturing/control/main${externalKeyParam}" title="${uiLabelMap.CurriculumDevelopment}">${uiLabelMap.CurriculumDevelopment}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.LearningProcessDevelopment}">${uiLabelMap.LearningProcessDevelopment}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.Evaluation}">${uiLabelMap.Evaluation}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.ResearchDevelopment}">${uiLabelMap.ResearchDevelopment}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.InnovationDevelopment}">${uiLabelMap.InnovationDevelopment}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.ResourceLearningDevelopment}">${uiLabelMap.ResourceLearningDevelopment}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.EducationDemonstration}">${uiLabelMap.EducationDemonstration}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.EducationIntroduction}">${uiLabelMap.EducationIntroduction}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.QualityAssuranceDevelopment}">${uiLabelMap.QualityAssuranceDevelopment}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.KnowledgeSupportCommunity}">${uiLabelMap.KnowledgeSupportCommunity}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.KnowledgeDevelopmentJoin}">${uiLabelMap.KnowledgeDevelopmentJoin}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.KnowledgeManagement}">${uiLabelMap.KnowledgeManagement}</a></li>																					
					</ul>				
				</li>	
				
				
				<li><a href="#" title="${uiLabelMap.BudgetManagement}">${uiLabelMap.BudgetManagement}</a>
					<ul>
						<li<#if selected> class="selected"</#if>><a href="/projectmgr/control/main${externalKeyParam}" title="${uiLabelMap.BudgetPlanning}">${uiLabelMap.BudgetPlanning}</a></li>
						<li<#if selected> class="selected"</#if>><a href="/accounting/control/findPayments" title="${uiLabelMap.BudgetDistribution}">${uiLabelMap.BudgetDistribution}</a></li>
						<li<#if selected> class="selected"</#if>><a href="/accounting/control/paymentReportHtml" title="${uiLabelMap.BudgetReport}">${uiLabelMap.BudgetReport}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.CapitalCollectionEducation}">${uiLabelMap.CapitalCollectionEducation}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.FinancialControlManagement}">${uiLabelMap.FinancialControlManagement}</a></li>
						<li<#if selected> class="selected"</#if>><a href="/accounting/control/main${externalKeyParam}" title="${uiLabelMap.AccountingManagement}">${uiLabelMap.AccountingManagement}</a></li>
						<li<#if selected> class="selected"</#if>><a href="/assetmaint/control/main${externalKeyParam}" title="${uiLabelMap.AssetManagement}">${uiLabelMap.AssetManagement}</a></li>																			
					</ul>
				</li>					
						 
			 	<li><a href="/humanres/control/main${externalKeyParam}" title="${uiLabelMap.HumanResourceManagement}">${uiLabelMap.HumanResourceManagement}</a>
					<ul>
						<li<#if selected> class="selected"</#if>><a href="/humanres/control/findEmployees" title="${uiLabelMap.EmployeeManagement}">${uiLabelMap.EmployeeManagement}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.RuleManagement}">${uiLabelMap.RuleManagement}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.PositionPlanningManagement}">${uiLabelMap.PositionPlanningManagement}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.PayrollManagement}">${uiLabelMap.PayrollManagement}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.WorkEffortManagement}">${uiLabelMap.WorkEffortManagement}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.TimeAttendanceManagement}">${uiLabelMap.TimeAttendanceManagement}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.ResumeManagement}">${uiLabelMap.ResumeManagement}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.ProductivityManagement}">${uiLabelMap.ProductivityManagement}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.ProjectManagement}">${uiLabelMap.ProjectManagement}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.LeaveManagement}">${uiLabelMap.LeaveManagement}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.SalaryExamination}">${uiLabelMap.SalaryExamination}</a></li>																				
					</ul>				
				</li>
				
				
				<li><a href="#" title="${uiLabelMap.GeneralManagement}">${uiLabelMap.GeneralManagement}</a>
<ul>
<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.EofficeManagement}">${uiLabelMap.EofficeManagement}</a></li>
<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.AllSupport}">${uiLabelMap.AllSupport}</a></li>
<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.BuildingManagement}">${uiLabelMap.BuildingManagement}</a></li>
<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.RegistrationManagement}">${uiLabelMap.RegistrationManagement}</a></li>
<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.AdmissionManagement}">${uiLabelMap.AdmissionManagement}</a></li>
<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.ResourceCollectionManagement}">${uiLabelMap.ResourceCollectionManagement}</a></li>
<li<#if selected> class="selected"</#if>><a href="/studentscare/control/main${externalKeyParam}" title="${uiLabelMap.StudentsCare}">${uiLabelMap.StudentsCare}</a></li>
<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.PublicRelationManagement}">${uiLabelMap.PublicRelationManagement}</a></li>
<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.CommunityManagement}">${uiLabelMap.CommunityManagement}</a></li>
<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.CommunityJoint}">${uiLabelMap.CommunityJoint}</a></li>
<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.QualityControlManagement}">${uiLabelMap.QualityControlManagement}</a></li>
<li<#if selected> class="selected"</#if>><a href="#${externalKeyParam}" title="${uiLabelMap.PublicService}">${uiLabelMap.PublicService}</a></li>																					
</ul>				
				</li>
				
				
				<li><a href="#" title="${uiLabelMap.SUToFBizSetting}">${uiLabelMap.SUToFBizSetting}</a>
					<ul>
						<li<#if selected> class="selected"</#if>><a href="/ofbizsetup/control/main${externalKeyParam}" title="${uiLabelMap.SetupApplication}">${uiLabelMap.SetupApplication}</a></li>
						<li<#if selected> class="selected"</#if>><a href="/partymgr/control/main${externalKeyParam}" title="${uiLabelMap.Party}">${uiLabelMap.Party}</a></li>
						<li<#if selected> class="selected"</#if>><a href="#" title="Curriculum Management">Curriculum Management5</a></li>		
						<li<#if selected> class="selected"</#if>><a href="#" title="-">*</a></li>	
						<li<#if selected> class="selected"</#if>><a href="#" title="-">*</a></li>	
					</ul>				
				</li>
			 	
				</ul>
			 
<!--
            <#list displayApps as display>
              <#assign thisApp = display.getContextRoot()>
              <#assign permission = true>
              <#assign selected = false>
              <#assign permissions = display.getBasePermission()>
              <#list permissions as perm>
                <#if perm != "NONE" && !security.hasEntityPermission(perm, "_VIEW", session)>
                  <#-- User must have ALL permissions in the base-permission list -->
                  <#assign permission = false>
                </#if>
              </#list>
              <#if permission == true>
                <#if thisApp == contextPath || contextPath + "/" == thisApp>
                  <#assign selected = true>
                </#if>
                <#assign thisURL = thisApp>
                <#if thisApp != "/">
                  <#assign thisURL = thisURL + "/control/main">
                </#if>
                  <#if layoutSettings.suppressTab?exists && display.name == layoutSettings.suppressTab>
                    <!-- do not display this component-->
                  <#else>
                    <li><a href="${thisURL + externalKeyParam}" <#if uiLabelMap?exists> title="${uiLabelMap[display.description]}">${uiLabelMap[display.title]}<#else> title="${display.description}">${display.title}</#if></a></li>
                  </#if>
              </#if>
            </#list>
-->			
			
                </ul>
                <!--
                <#include "component://suterpschool/includes/secondary-appbar.ftl" />
				-->
            </div>
        </div>
</#if>