
<template>
	<div>
		<div class="app-contain">
			<el-form class="userinfo_form" ref="userinfoFormRef" :model="form" label-width="$template2.back.add.form.base.labelWidth">
				<el-row>
					<el-col :span="12">
						<el-form-item label="居民账号" prop="juminzhanghao">
							<el-input class="list_inp" v-model="user.juminzhanghao" readonly placeholder="居民账号" clearable />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="居民密码" prop="juminmima">
							<el-input class="list_inp" v-model="user.juminmima" readonly placeholder="居民密码" clearable />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="居民姓名" prop="juminxingming">
							<el-input class="list_inp" v-model="user.juminxingming"  placeholder="居民姓名" clearable />
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="头像" prop="touxiang">
							<uploads
								action="file/upload" 
								tip="请上传头像" 
								:limit="3" 
								style="width: 100%;text-align: left;"
								:fileUrls="user.touxiang?user.touxiang:''" 
								@change="shequjumintouxiangUploadSuccess">
							</uploads>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="性别" prop="xingbie">
							<el-select 
								class="list_sel" 
								v-model="user.xingbie" 
								placeholder="请选择性别"
								>
								<el-option v-for="item in shequjuminxingbieLists" :label="item" :value="item"></el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="手机号码" prop="shoujihaoma">
							<el-input class="list_inp" v-model="user.shoujihaoma"  placeholder="手机号码" clearable />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="身份证号" prop="shenfenzhenghao">
							<el-input class="list_inp" v-model="user.shenfenzhenghao"  placeholder="身份证号" clearable />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="政治面貌" prop="zhengzhimianmao">
							<el-input class="list_inp" v-model="user.zhengzhimianmao"  placeholder="政治面貌" clearable />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="出生地" prop="chushengdi">
							<el-input class="list_inp" v-model="user.chushengdi"  placeholder="出生地" clearable />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="联系地址" prop="lianxidizhi">
							<el-input class="list_inp" v-model="user.lianxidizhi"  placeholder="联系地址" clearable />
						</el-form-item>
					</el-col>
					<span class="userinfo_form_btn_box">
						<el-button class='userinfo_confirm' type="primary" @click="onSubmit">保存</el-button>
					</span>
				</el-row>
			</el-form>
		</div>
	</div>
</template>

<script setup>
	import { isNumber,isIntNumer,isEmail,isMobile,isPhone,isURL,checkIdCard } from "@/utils/toolUtil";
	import {
		reactive,
		ref,
		getCurrentInstance
	} from 'vue'
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const tableName = ref('shequjumin')
	const user = ref({})
	const shequjuminxingbieLists = ref([])
	const init = () => {
		shequjuminxingbieLists.value = "男,女".split(',')
	}
	const shequjumintouxiangUploadSuccess=(fileUrls)=> {
	    user.value.touxiang = fileUrls;
	}
	const onSubmit = () => {
		if((!user.value.juminzhanghao)){
			context?.$toolUtil.message(`居民账号不能为空`,'error')
			return false
		}
		if((!user.value.juminmima)){
			context?.$toolUtil.message(`居民密码不能为空`,'error')
			return false
		}
		if((!user.value.juminxingming)){
			context?.$toolUtil.message(`居民姓名不能为空`,'error')
			return false
		}
		if(user.value.touxiang!=null){
			user.value.touxiang = user.value.touxiang.replace(new RegExp(context?.$config.url,"g"),"");
		}
		if((user.value.shoujihaoma)&&(!context?.$toolUtil.isMobile(user.value.shoujihaoma))){
			context?.$toolUtil.message(`手机号码应输入手机格式`,'error')
			return false
		}
		if((user.value.shenfenzhenghao)&&(!context?.$toolUtil.checkIdCard(user.value.shenfenzhenghao))){
			context?.$toolUtil.message(`身份证号应输入身份证格式`,'error')
			return false
		}
		context?.$http({
			url: `${tableName.value}/update`,
			method: 'post',
			data: user.value
		}).then(res => {
			context?.$toolUtil.message('修改成功','success')
		})

	}
	const getInfo = () => {
		context?.$http({
			url: `${tableName.value}/session`,
			method: 'get'
		}).then(res => {
			user.value = res.data.data
			init()
		})
	}
	getInfo()
</script>

<style lang="scss" scoped>
	// 表单
	.userinfo_form {
		border: 0px solid #ddd;
		border-radius: 4px;
		padding: 30px;
		margin: 0;
		background: #fff;
		// form item
		:deep(.el-form-item) {
			margin: 0 150px 20px 0;
			background: none;
			display: flex;
			// 内容盒子
			.el-form-item__content{
				display: flex;
				width: calc(100% - 120px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
			}
			// 输入框
			.list_inp {
				border: 1px solid #ddd;
				border-radius: 0px;
				padding: 0 10px;
				width: auto;
				line-height: 36px;
				box-sizing: border-box;
				min-width: 350px;
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
			//下拉框样式
			.list_sel {
				border: 1px solid #ddd;
				border-radius: 0px;
				padding: 0 10px;
				width: auto;
				line-height: 36px;
				box-sizing: border-box;
				min-width: 350px;
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
						}
						.is-focus {
							box-shadow: none !important;
						}
					}
				}
			}
			//图片上传样式
			.el-upload-list  {
				//提示语
				.el-upload__tip {
					margin: 7px 0 0;
					color: #999;
					display: flex;
					font-size: 14px;
					justify-content: flex-start;
					align-items: center;
				}
				//外部盒子
				.el-upload--picture-card {
					border: 1px solid #ddd;
					cursor: pointer;
					background-color: #fff;
					border-radius: 0px;
					width: 120px;
					line-height: 70px;
					text-align: center;
					height: 60px;
					//图标
					.el-icon{
						color: #999;
						font-size: 32px;
					}
				}
				.el-upload-list__item {
					border: 1px solid #ddd;
					cursor: pointer;
					background-color: #fff;
					border-radius: 0px;
					width: 120px;
					line-height: 70px;
					text-align: center;
					height: 60px;
				}
			}

		}
		// 按钮盒子
		.userinfo_form_btn_box {
			display: flex;
			width: 100%;
			justify-content: center;
			align-items: center;
			// 确定按钮
			.userinfo_confirm {
				border: 1px solid #f69a28;
				cursor: pointer;
				border-radius: 0px;
				padding: 0 24px;
				margin: 0 20px 0 0;
				outline: none;
				color: #fff;
				background: linear-gradient(270deg, rgba(246,154,40,1) 0%, rgba(255,186,101,1) 50%, rgba(246,154,40,1) 100%);
				width: auto;
				font-size: 14px;
				min-width: 100px;
				height: 36px;
			}
			// 确定按钮-悬浮
			.userinfo_confirm:hover {
			}
		}
	}
</style>
