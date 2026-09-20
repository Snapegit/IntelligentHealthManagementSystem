<template>
	<div>
		<div class="register_view">
			<div class="outTitle_view">
				<div class="outTilte">{{projectName}}注册</div>
			</div>
			<el-form :model="registerForm" class="register_form">
				<div class="list_item">
					<div class="list_label">医生工号：</div>
					<input class="list_inp"
					 v-model="registerForm.yishenggonghao" 
					 placeholder="请输入医生工号"
					 type="text"
					 />
				</div>
				<div class="list_item">
					<div class="list_label">医生密码：</div>
					<input class="list_inp"
					 v-model="registerForm.yishengmima" 
					 placeholder="请输入医生密码"
					 type="password"
					 />
				</div>
				<div class="list_item">
					<div class="list_label">确认医生密码：</div>
					<input class="list_inp" v-model="registerForm.yishengmima2" type="password" placeholder="请输入确认医生密码" />
				</div>
				<div class="list_item">
					<div class="list_label">姓名：</div>
					<input class="list_inp"
					 v-model="registerForm.xingming" 
					 placeholder="请输入姓名"
					 type="text"
					 />
				</div>
				<div class="list_item">
					<div class="list_label">照片：</div>
					<div class="list_file_list">
						<uploads
							action="file/upload" 
							tip="请上传照片" 
							:limit="3" 
							style="width: 100%;text-align: left;"
							:fileUrls="registerForm.zhaopian?registerForm.zhaopian:''" 
							@change="zhaopianUploadSuccess">
						</uploads>
					</div>
				</div>
				<div class="list_item">
					<div class="list_label">性别：</div>
					<el-select 
						class="list_sel" 
						v-model="registerForm.xingbie" 
						placeholder="请选择性别"
						>
						<el-option v-for="item in yishengxingbieLists" :label="item" :value="item"></el-option>
					</el-select>
				</div>
				<div class="list_item">
					<div class="list_label">联系电话：</div>
					<input class="list_inp"
					 v-model="registerForm.lianxidianhua" 
					 placeholder="请输入联系电话"
					 type="text"
					 />
				</div>
				<div class="list_item">
					<div class="list_label">身份证：</div>
					<input class="list_inp"
					 v-model="registerForm.shenfenzheng" 
					 placeholder="请输入身份证"
					 type="text"
					 />
				</div>
				<div class="list_item">
					<div class="list_label">所属医院：</div>
					<el-select 
						class="list_sel" 
						v-model="registerForm.suoshuyiyuan" 
						placeholder="请选择所属医院"
						>
						<el-option v-for="item in yishengsuoshuyiyuanLists" :label="item" :value="item"></el-option>
					</el-select>
				</div>
				<div class="list_item">
					<div class="list_label">政治面貌：</div>
					<input class="list_inp"
					 v-model="registerForm.zhengzhimianmao" 
					 placeholder="请输入政治面貌"
					 type="text"
					 />
				</div>
				<div class="list_item">
					<div class="list_label">出生地：</div>
					<input class="list_inp"
					 v-model="registerForm.chushengdi" 
					 placeholder="请输入出生地"
					 type="text"
					 />
				</div>
				<div class="list_item">
					<div class="list_label">联系地址：</div>
					<input class="list_inp"
					 v-model="registerForm.lianxidizhi" 
					 placeholder="请输入联系地址"
					 type="text"
					 />
				</div>
				<div class="list_item">
					<div class="list_label">问诊状态：</div>
					<el-select 
						class="list_sel" 
						v-model="registerForm.wenzhenzhuangtai" 
						placeholder="请选择问诊状态"
						>
						<el-option v-for="item in yishengwenzhenzhuangtaiLists" :label="item" :value="item"></el-option>
					</el-select>
				</div>
				<div class="list_btn">
					<el-button class="register" type="success" @click="handleRegister">注册</el-button>
					<div class="r-login" @click="close">已有账号，直接登录</div>
				</div>
			</el-form>	
		</div>
	</div>
</template>
<script setup>
	import {
		ref,
		getCurrentInstance,
		nextTick,
	} from 'vue';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const projectName = context?.$project.projectName
	//获取注册类型
	import { useRoute } from 'vue-router';
	const route = useRoute()
	const tableName = ref('yisheng')
	
	//公共方法
	const getUUID=()=> {
		return new Date().getTime();
	}
	
	const registerForm = ref({
        xingbie: '',
        suoshuyiyuan: '',
         wenzhenzhuangtai: '可问诊',
	})
	const yishengxingbieLists = ref([])
	const yishengsuoshuyiyuanLists = ref([])
	const yishengwenzhenzhuangtaiLists = ref([])
	const init=()=>{
		yishengxingbieLists.value = "男,女".split(',')
		context?.$http({
			url:`option/yiyuanxinxi/yiyuanmingcheng`,
			method:'get'
		}).then(res=>{
			yishengsuoshuyiyuanLists.value = res.data.data
		})
		yishengwenzhenzhuangtaiLists.value = "不可问诊,可问诊".split(',')
	}
    const zhaopianUploadSuccess=(fileUrls)=> {
        registerForm.value.zhaopian = fileUrls;
    }
	// 多级联动参数
	//注册按钮
	const handleRegister = () => {
		let url = tableName.value +"/register";
		if((!registerForm.value.yishenggonghao)){
			context?.$toolUtil.message(`医生工号不能为空`,'error')
			return false
		}
		if((!registerForm.value.yishengmima)){
			context?.$toolUtil.message(`医生密码不能为空`,'error')
			return false
		}
		if(registerForm.value.yishengmima!=registerForm.value.yishengmima2){
			context?.$toolUtil.message('两次密码输入不一致','error')
			return false
		}
		if(registerForm.value.zhaopian!=null){
			registerForm.value.zhaopian = registerForm.value.zhaopian.replace(new RegExp(context?.$config.url,"g"),"");
		}
		if(registerForm.value.lianxidianhua&&(!context?.$toolUtil.isMobile(registerForm.value.lianxidianhua))){
			context?.$toolUtil.message(`联系电话应输入手机格式`,'error')
			return false
		}
		if(registerForm.value.shenfenzheng&&(!context?.$toolUtil.checkIdCard(registerForm.value.shenfenzheng))){
			context?.$toolUtil.message(`身份证应输入身份证格式`,'error')
			return false
		}
		
		context?.$http({
			url:url,
			method:'post',
			data:registerForm.value
		}).then(res=>{
			context?.$toolUtil.message('注册成功','success', obj=>{
				context?.$router.push({
					path: "/login"
				});
			})
		})
	}
	//返回登录
	const close = () => {
		context?.$router.push({
			path: "/login"
		});
	}
	init()
</script>
<style lang="scss" scoped>
	.register_view {
		background-repeat: no-repeat;
		flex-direction: column;
		background-size: cover;
		background: url(http://clfile.zggen.cn/20231114/502df44310e74a87b24f97b4fc60158c.jpg);
		display: flex;
		min-height: 100vh;
		justify-content: center;
		align-items: center;
		position: relative;
		background-position: center center;
		// 标题盒子
		.outTitle_view {
			padding: 0px;
			margin: 20px 0;
			display: flex;
			align-items: center;
			.outTilte {
				border: 0px solid #fff;
				border-radius: 0px;
				padding: 10px 20px;
				color: #fff;
				font-size: 28px;
			}
		}
		// 表单盒子
		.register_form {
			border-radius: 4px;
			padding: 30px 90px 40px 20px;
			box-shadow: 0px 26px 26px -30px #4986ff;
			margin: 20px 0;
			background: #fff;
			display: block;
			width: 550px;
			min-height: 500px;
			justify-content: center;
			flex-wrap: wrap;
		}
		// item盒子
		.list_item {
			margin: 0 0 12px;
			display: flex;
			width: 100%;
			justify-content: flex-start;
			align-items: center;
			// label
			.list_label {
				color: #333;
				width: 120px;
				font-size: 14px;
				box-sizing: border-box;
				text-align: right;
			}
			// 输入框
			:deep(.list_inp) {
				border: 1px solid #4986ff;
				border-radius: 0px;
				padding: 0 10px;
				color: #666;
				background: none;
				width: calc(100% - 100px);
				border-width: 0 0 1px;
				line-height: 36px;
				box-sizing: border-box;
				height: 36px;
				//去掉默认样式
				.el-input__wrapper{
					border: none;
					box-shadow: none;
					background: none;
					border-radius: 0;
					height: 100%;
					padding: 0;
				}
				.is-focus {
					box-shadow: none !important;
				}
			}
		}
		//下拉框样式
		:deep(.list_sel) {
			border: 1px solid #4986ff;
			border-radius: 0px;
			padding: 0 10px;
			color: #666;
			background: none;
			width: calc(100% - 100px);
			border-width: 0 0 1px;
			line-height: 36px;
			box-sizing: border-box;
			//去掉默认样式
			.select-trigger{
				height: 100%;
				.el-input{
					height: 100%;
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
						padding: 0;
					}
					.is-focus {
						box-shadow: none !important;
					}
				}
			}
		}
		//图片上传样式
		.list_file_list  {
			//提示语
			:deep(.el-upload__tip){
				margin: 7px 0 0;
				color: #333;
				display: flex;
				font-size: 14px;
				justify-content: flex-start;
				align-items: center;
			}
			//外部盒子
			:deep(.el-upload--picture-card){
				border: 1px solid #4986ff50;
				cursor: pointer;
				border-radius: 20px;
				color: #fff;
				background: none;
				width: 120px;
				line-height: 48px;
				text-align: center;
				height: 44px;
				//图标
				.el-icon{
					color: #4986ff99;
					font-weight: 600;
					font-size: 24px;
				}
			}
			:deep(.el-upload-list__item) {
				border: 1px solid #4986ff50;
				cursor: pointer;
				border-radius: 20px;
				color: #fff;
				background: none;
				width: 120px;
				line-height: 48px;
				text-align: center;
				height: 44px;
			}
		}
		//按钮盒子
		.list_btn {
			margin: 20px 0 0;
			display: flex;
			width: 100%;
			justify-content: flex-end;
			align-items: center;
			flex-wrap: wrap;
			//注册按钮
			.register {
					border: none;
					border-radius: 0px;
					color: #fff;
					background: linear-gradient(180deg, rgba(66,137,208,1) 0%, rgba(17,57,97,1) 100%),#113961;
					width: calc(100% - 120px);
					font-size: 16px;
					height: 40px;
			}
			//注册按钮悬浮样式
			.register:hover {
				border: none;
				border-radius: 4px;
				background: linear-gradient(180deg, rgba(66,137,208,1) 0%, rgba(17,57,97,1) 100%),#113961;
				width: calc(100% - 120px);
				font-size: 16px;
				opacity: 1;
				height: 40px;
			}
			//已有账号
			.r-login {
				cursor: pointer;
				padding: 20px 0 0 80px;
				color: #4986ff;
				width: 80%;
				font-size: 14px;
				text-align: right;
			}
		}
	}
</style>