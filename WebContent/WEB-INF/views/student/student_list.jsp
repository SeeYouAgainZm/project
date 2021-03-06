<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>SSM在线学生管理系统</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!-- basic styles -->
 		<link href="${pageContext.request.contextPath}/css/bootstrap/assets/css/bootstrap.min.css" rel="stylesheet" /> 
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/assets/css/font-awesome.min.css" />
		<!-- ace styles -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/assets/css/ace-ie.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/assets/css/ace-skins.min.css" />
		<script src="${pageContext.request.contextPath}/js/bootstrap/assets/js/ace-extra.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/assets/js/jquery-2.0.3.min.js"></script>
		<!-- 引入学生自定义的样式 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/student/student.css" />
	</head>
	<body>
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>
			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
								SSM项目在线学生管理平台
						</small>
					</a>
				</div>
				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="${pageContext.request.contextPath.concat(currentStu.imgUrl)}" alt="Jason's Photo" />
								<span class="user-info">
									<small>欢迎,</small>
									${currentStu.name}
								</span>
								<i class="icon-caret-down"></i>
							</a>
							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="/login.jsp"><i class="icon-off"></i>退出</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>
			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>
				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<button class="btn btn-success">
								<i class="icon-signal"></i>
							</button>

							<button class="btn btn-info">
								<i class="icon-pencil"></i>
							</button>

							<button class="btn btn-warning">
								<i class="icon-group"></i>
							</button>

							<button class="btn btn-danger">
								<i class="icon-cogs"></i>
							</button>
						</div>

						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div>
					</div><!-- #左侧菜单-->
					
					<ul class="nav nav-list">
						<li >
							<a href="#" class="dropdown-toggle">
								<i class="icon-desktop"></i>
								<span class="menu-text"> 班级管理</span>

								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li>
									<a href="/classes/index">
										<i class="icon-double-angle-right"></i>
										班级列表
									</a>
								</li>
							</ul>

						</li>
						
						<li class="active open">
							<a href="#" class="dropdown-toggle">
								<i class="icon-user"></i>
								<span class="menu-text">学生管理</span>

								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li>
									<a href="/student/index">
										<i class="icon-double-angle-right"></i>
										学生列表
									</a>
								</li>
							</ul>

							
						</li>
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="glyphicon-th-large"></i>
								<span class="menu-text">老师管理</span>
								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li>
									<a href="tables.html">
										<i class="icon-double-angle-right"></i>
										老师列表
									</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> 课程管理</span>

								<b class="arrow icon-angle-down"></b>
							</a>
							<ul class="submenu">
								<li>
									<a href="tables.html">
										<i class="icon-double-angle-right"></i>
										课程列表
									</a>
								</li>
							</ul>
						</li>
						
		
					</ul>

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>

				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">SSM</a>
							</li>

							<li>
								<a href="#">学生管理</a>
							</li>
							<li class="active">学生列表</li>
						</ul><!-- .breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="icon-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- #nav-search -->
					</div>

					<div class="page-content">
						

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-xs-12">
										<p>
											<a href="/student/add">
											<button class="btn btn-lg btn-success">
												<i class="icon-ok"></i>
												新增
											</button>
											</a>

											<button id="editBtn" class="btn btn-lg btn-warning">
												<i class="icon-fire"></i>
												修改
											</button>

											<button id="delBtn" class="btn btn-lg btn-danger" onclick="delBtn()">
												<i class="icon-bolt"></i>
												删除
											</button>
										</p>
								
								</div>
								</div>

								<div class="row">
									<div class="col-xs-12">
										<div class="table-responsive">
											<table id="stuTable" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th class="center">
															<label>
																<input type="checkbox" class="ace" />
																<span class="lbl"></span>
															</label>
														</th>
														<th>学生编号</th>
														<th>学生姓名</th>
														<th >学生性别</th>
														<th class="hidden-480">学生学号</th>
														<th class="hidden-480">所选课程</th>
														<th>
															<i class="icon-time bigger-110 hidden-480"></i>
															学生头像
														</th>
														

														<th>其他操作</th>
													</tr>
												</thead>

												<tbody>
												<c:forEach items="${students}" var="stu">
													<tr>
														<td class="center">
															<label>
																<input type="checkbox" class="ace" />
																<span class="lbl"></span>
															</label>
														</td>

														<td>${stu.id}</td>
														<td>${stu.name}</td>
														<td class="hidden-480">
														<c:choose>
															<c:when test="${stu.sex}">
																男
															</c:when>
															<c:otherwise>
																女
															</c:otherwise>
														</c:choose>
														</td>
														<td>${stu.stunum}</td>
														<td>${stu.classes.class_name}</td>

														<td class="hidden-480">
															<span >
																
																<img style="width:60;height:60px;"  src="${pageContext.request.contextPath.concat(stu.imgUrl)}" />
															</span>
														</td>

														<td>
															<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
																<a class="blue" href="#">
																	<i class="icon-zoom-in bigger-130"></i>
																</a>

																<a class="green" href="/student/edit?id=${stu.id}" title="edit">
																	<i class="icon-pencil bigger-130"></i>
																</a>
	
																<a class="red" href="/student/delete?id=${stu.id}" title="delete">
																	<i class="icon-trash bigger-130"></i>
																</a>
															</div>
														</td>
													</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>

							
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-skin="default" value="#438EB9">#438EB9</option>
									<option data-skin="skin-1" value="#222A2D">#222A2D</option>
									<option data-skin="skin-2" value="#C6487E">#C6487E</option>
									<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
								</select>
							</div>
							<span>&nbsp; 换肤</span>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
							<label class="lbl" for="ace-settings-navbar"> 固定导航栏</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar"> 固定工具栏</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs"> 固定面包屑导航</label>
						</div>

					

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
							<label class="lbl" for="ace-settings-add-container">
								内置
								<b>.容器</b>
							</label>
						</div>
					</div>
				</div><!-- /#ace-settings-container -->
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->
<!-- basic scripts -->


		<script type="text/javascript">
			window.jQuery || document.write("<script src='/bootstrap/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

	
		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='/bootstrap/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${pageContext.request.contextPath}/js/bootstrap/assets/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap/assets/js/typeahead-bs2.min.js"></script>


		<script src="${pageContext.request.contextPath}/js/bootstrap/assets/js/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap/assets/js/jquery.dataTables.bootstrap.js"></script>

		<!-- ace scripts -->

		<script src="${pageContext.request.contextPath}/js/bootstrap/assets/js/ace-elements.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap/assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			
			jQuery(function($) {

				var stuTable = $('#stuTable').dataTable( {
				"aoColumns": [
			      { "bSortable": false },
			      null, null,null, null, null,null,
				  { "bSortable": false }
				],
				"iDisplayLength": 5,
				"oLanguage": { // 语言设置 
					"sLengthMenu": "每页显示 _MENU_ 条记录", 
					"sZeroRecords": "抱歉， 没有找到", 
					"sInfo": "从 _START_ 到 _END_ /共 _TOTAL_ 条数据", 
					"sInfoEmpty": "没有数据", 
					"sInfoFiltered": "(从 _MAX_ 条数据中检索)", 
					"sZeroRecords": "没有检索到数据", 
					"sSearch": "搜索:", 
					"oPaginate": { 
					"sFirst": "首页", 
					"sPrevious": "前一页", 
					"sNext": "后一页", 
					"sLast": "尾页" 
					} 
					},
				"aLengthMenu": [[5, 10, 15, -1], ["5条", "10条", "15条", "所有数据"]]
				} );
				
				
				//全选功能
				$('table th input:checkbox').on('click' , function(){
					
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
				});
				
				  $('#stuTable tbody').on( 'click', 'tr', function () {
				        if ( $(this).hasClass('selected') ) {
				            $(this).removeClass('selected');
				        }
				        else {
				        	stuTable.$('tr.selected').removeClass('selected');
				            $(this).addClass('selected');
				        }
				    } );
				//删除功能
				$('#delBtn').click( function () {
					//选择一行数据
				 	var id = 0;
					//得到表格所有行 jquery datatable
					var nTrs = stuTable.fnGetNodes();//fnGetNodes获取表格所有行，nTrs[i]表示第i行tr对象				
				       	//遍历表格
						for(var i = 0; i < nTrs.length; i++){
							//如果这个上被选中
				    	   if($(nTrs[i]).hasClass('selected')){
				    		   //或者这行的数据
				          	var row = stuTable.fnGetData(nTrs[i]);//fnGetData获取一行的数据
				          	 id = row[1];
				    	   }
				       }
					if(id == 0){
						alert("请选中一行数据");
					}else{
						//调用controller层里面写的方法
						location.href="/student/delete?id="+id;
					} 
			    } );
				
				//编辑功能
				$('#editBtn').click( function () {
					var id = 0;
					var nTrs = stuTable.fnGetNodes();//fnGetNodes获取表格所有行，nTrs[i]表示第i行tr对象				
				       for(var i = 0; i < nTrs.length; i++){	
				    	   if($(nTrs[i]).hasClass('selected')){
				          	var row = stuTable.fnGetData(nTrs[i]);//fnGetData获取一行的数据
				          	 id = row[1];
				    	   }
				       }
					if(id == 0){
						alert("请选中一行数据");
					}else{
						location.href="/student/edit?id="+id;
					}
			    } );
			});
		</script>
		
	<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>	
		
	
</body>
</html>
