<template>
	<header>
		<h1>header</h1>
		<div class="menuWrap">
			<ul class="menu">
				<li><a href="javascript:;">색인 상태 조회</a></li>
                <li><a href="javascript:;">색인 요청</a></li>
                <li><a href="javascript:;">색인 중지</a></li>
                <li><a href="javascript:;">문서 조회</a></li>
                <li><a href="javascript:;">문서 등록</a></li>
                <li><a href="javascript:;">문서 수정</a></li>
				<li><a href="javascript:;">문서 삭제</a></li>
				<li><a href="javascript:;">문서 벌크 업로드</a></li>
				<li><a href="javascript:;">문서 벌크 다운로드</a></li>
                <li><a href="javascript:;">단일 테스트</a></li>
                <li><a href="javascript:;">벌크 테스트</a></li>
			</ul>
		</div>
	</header>
</template>

<script>
export default {
	
}
</script>

<style scoped>
header{width:100%; text-align:center; position:relative; height:120px; border-bottom:1px solid #35495e}
header h1{position:absolute; top:0; left:100px;}
header ul.menu:after{display:block; clear:both; content:'';}
header ul.menu{position:absolute; top:20px; right:50px;}
header ul.menu li{float:left; padding:10px 20px; list-style:none;}

a{text-decoration:none; color:#333;}
</style>
