<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<div class="container-fluid" ng-controller="UserCtrl">
	<div id="side-toolbar">
		<div class="content-toolbar">
			<ul class="ul-toolbar">
				<li class="search">
					<a> 
				            <form method="" action="" class="form-inline" >
				            <span><i class="fa fa-search" aria-hidden="true"></i></span>
				                <input type="text"​ class="side-search" placeholder="ស្វែងរក"  ng-model="selected" uib-typeahead="title.TITLE  for title in allDocTitle | filter:$viewValue | limitTo:8"/>
				                <button type="submit" class="btn-side-search"> <span class="glyphicon glyphicon-search"></span></button>
				            </form>
						
					</a>
				</li>
				<li class="feedback">
						<a>
							<div id="comment-side">
									<form method="" action="" class="form-inline" >
							            <span><i class="fa fa-commenting-o" aria-hidden="true"></i></span>
							            <textarea rows="1" value="សូមសរសេរមតិរបស់អ្នកនៅទីនេះ"​ class="comment-side" ng-model="recommend"></textarea>
							            <button type="submit" class="btn-comment" ng-click="saveFeedBack()">ផ្ងើ</button>
				            </form>
							</div>
						</a>
				</li>
			</ul>
		</div>
	</div>
</div>