<template>
	<div>
		<el-dialog v-model="formVisible" :title="formTitle" width="80%" destroy-on-close :fullscreen='false'>
			<el-form class="formModel_form" ref="formRef" :model="form" label-width="$template2.back.add.form.base.labelWidth" :rules="rules">
				<el-row>
					<el-col :span="12">
						<el-form-item label="居民账号" prop="juminzhanghao">
							<el-input class="list_inp" v-model="form.juminzhanghao" placeholder="居民账号"
								 type="text" 								:readonly="!isAdd||disabledForm.juminzhanghao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="居民姓名" prop="juminxingming">
							<el-input class="list_inp" v-model="form.juminxingming" placeholder="居民姓名"
								 type="text" 								:readonly="!isAdd||disabledForm.juminxingming?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="性别" prop="xingbie">
							<el-input class="list_inp" v-model="form.xingbie" placeholder="性别"
								 type="text" 								:readonly="!isAdd||disabledForm.xingbie?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="年龄" prop="nianling">
							<el-input class="list_inp" v-model="form.nianling" placeholder="年龄"
								 type="text" 								:readonly="!isAdd||disabledForm.nianling?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="身高" prop="shengao">
							<el-input class="list_inp" v-model="form.shengao" placeholder="身高"
								 type="text" 								:readonly="!isAdd||disabledForm.shengao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="体重" prop="tizhong">
							<el-input class="list_inp" v-model="form.tizhong" placeholder="体重"
								 type="text" 								:readonly="!isAdd||disabledForm.tizhong?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="血型" prop="xuexing">
							<el-input class="list_inp" v-model="form.xuexing" placeholder="血型"
								 type="text" 								:readonly="!isAdd||disabledForm.xuexing?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="登记时间" prop="dengjishijian">
							<el-date-picker
								class="list_date"
								v-model="form.dengjishijian"
								format="YYYY-MM-DD HH:mm:ss"
								value-format="YYYY-MM-DD HH:mm:ss"
								type="datetime"
								:readonly="!isAdd||disabledForm.dengjishijian?true:false"
								placeholder="请选择登记时间" />
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="药物过敏" prop="yaowuguomin">
							<el-input v-model="form.yaowuguomin" placeholder="药物过敏" type="textarea"
							:readonly="!isAdd||disabledForm.yaowuguomin?true:false"
							/>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="家族病史" prop="jiazubingshi">
							<el-input v-model="form.jiazubingshi" placeholder="家族病史" type="textarea"
							:readonly="!isAdd||disabledForm.jiazubingshi?true:false"
							/>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="住院记录" prop="zhuyuanjilu">
							<el-input v-model="form.zhuyuanjilu" placeholder="住院记录" type="textarea"
							:readonly="!isAdd||disabledForm.zhuyuanjilu?true:false"
							/>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="其他详情" prop="qitaxiangqing">
							<el-input v-model="form.qitaxiangqing" placeholder="其他详情" type="textarea"
							:readonly="!isAdd||disabledForm.qitaxiangqing?true:false"
							/>
						</el-form-item>
					</el-col>
				</el-row>
			</el-form>
			<template #footer v-if="isAdd||type=='logistics'||type=='reply'">
				<span class="formModel_btn_box">
					<el-button class="formModel_cancel" @click="closeClick">取消</el-button>
					<el-button class="formModel_confirm" type="primary" @click="save"
						>
						提交
					</el-button>
				</span>
			</template>
		</el-dialog>
	</div>
</template>
<script setup>
	import {
		reactive,
		ref,
		getCurrentInstance,
		nextTick,
		computed,
		defineEmits
	} from 'vue'
	const context = getCurrentInstance()?.appContext.config.globalProperties;	
	const emit = defineEmits(['formModelChange'])
	//基础信息
	const tableName = 'jiankangdangan'
	const formName = '健康档案'
	//基础信息
	//form表单
	const form = ref({})
	const disabledForm = ref({
		juminzhanghao : false,
		juminxingming : false,
		xingbie : false,
		nianling : false,
		shengao : false,
		tizhong : false,
		xuexing : false,
		yaowuguomin : false,
		jiazubingshi : false,
		zhuyuanjilu : false,
		qitaxiangqing : false,
		dengjishijian : false,
	})
	const formVisible = ref(false)
	const isAdd = ref(false)
	const formTitle = ref('')
	//表单验证
	//匹配整数
	const validateIntNumber = (rule, value, callback) => {
		if (!value) {
			callback();
		} else if (!context?.$toolUtil.isIntNumer(value)) {
			callback(new Error("请输入整数"));
		} else {
			callback();
		}
	}
	//匹配数字
	const validateNumber = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isNumber(value)) {
			callback(new Error("请输入数字"));
		} else {
			callback();
		}
	}
	//匹配手机号码
	const validateMobile = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isMobile(value)) {
			callback(new Error("请输入正确的手机号码"));
		} else {
			callback();
		}
	}
	//匹配电话号码
	const validatePhone = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isPhone(value)) {
			callback(new Error("请输入正确的电话号码"));
		} else {
			callback();
		}
	}
	//匹配邮箱
	const validateEmail = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isEmail(value)) {
			callback(new Error("请输入正确的邮箱地址"));
		} else {
			callback();
		}
	}
	//匹配身份证
	const validateIdCard = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.checkIdCard(value)) {
			callback(new Error("请输入正确的身份证号码"));
		} else {
			callback();
		}
	}
	//匹配网站地址
	const validateUrl = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isURL(value)) {
			callback(new Error("请输入正确的URL地址"));
		} else {
			callback();
		}
	}
	const rules = ref({
		juminzhanghao: [
			{required: true,message: '请输入',trigger: 'blur'}, 
		],
		juminxingming: [
		],
		xingbie: [
		],
		nianling: [
		],
		shengao: [
			{required: true,message: '请输入',trigger: 'blur'}, 
		],
		tizhong: [
			{required: true,message: '请输入',trigger: 'blur'}, 
		],
		xuexing: [
			{required: true,message: '请输入',trigger: 'blur'}, 
		],
		yaowuguomin: [
		],
		jiazubingshi: [
		],
		zhuyuanjilu: [
		],
		qitaxiangqing: [
		],
		dengjishijian: [
		],
	})
	//表单验证
	
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	//methods

	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//重置
	const resetForm = () => {
		form.value = {
			juminzhanghao: '',
			juminxingming: '',
			xingbie: '',
			nianling: '',
			shengao: '',
			tizhong: '',
			xuexing: '',
			yaowuguomin: '',
			jiazubingshi: '',
			zhuyuanjilu: '',
			qitaxiangqing: '',
			dengjishijian: '',
		}
	}
	//获取info
	const getInfo = ()=>{
		context?.$http({
			url: `${tableName}/info/${id.value}`,
			method: 'get'
		}).then(res => {
			let reg=new RegExp('../../../file','g')
			form.value = res.data.data
			formVisible.value = true
		})
	}
	const crossRow = ref('')
	const crossTable = ref('')
	const crossTips = ref('')
	const crossColumnName = ref('')
	const crossColumnValue = ref('')
	//初始化
	const init=(formId=null,formType='add',formNames='',row=null,table=null,statusColumnName=null,tips=null,statusColumnValue=null)=>{
		resetForm()
			form.value.dengjishijian = context?.$toolUtil.getCurDateTime()
		if(formId){
			id.value = formId
			type.value = formType
		}
		if(formType == 'add'){
			isAdd.value = true
			formTitle.value = '新增' + formName
			formVisible.value = true
		}else if(formType == 'info'){
			isAdd.value = false
			formTitle.value = '查看' + formName
			getInfo()
		}else if(formType == 'edit'){
			isAdd.value = true
			formTitle.value = '修改' + formName
			getInfo()
		}
		else if(formType == 'cross'){
			isAdd.value = true
			formTitle.value = formNames
			// getInfo()
			for(let x in row){
				if(x=='juminzhanghao'){
					form.value.juminzhanghao = row[x];
					disabledForm.value.juminzhanghao = true;
					continue;
				}
				if(x=='juminxingming'){
					form.value.juminxingming = row[x];
					disabledForm.value.juminxingming = true;
					continue;
				}
				if(x=='xingbie'){
					form.value.xingbie = row[x];
					disabledForm.value.xingbie = true;
					continue;
				}
				if(x=='nianling'){
					form.value.nianling = row[x];
					disabledForm.value.nianling = true;
					continue;
				}
				if(x=='shengao'){
					form.value.shengao = row[x];
					disabledForm.value.shengao = true;
					continue;
				}
				if(x=='tizhong'){
					form.value.tizhong = row[x];
					disabledForm.value.tizhong = true;
					continue;
				}
				if(x=='xuexing'){
					form.value.xuexing = row[x];
					disabledForm.value.xuexing = true;
					continue;
				}
				if(x=='yaowuguomin'){
					form.value.yaowuguomin = row[x];
					disabledForm.value.yaowuguomin = true;
					continue;
				}
				if(x=='jiazubingshi'){
					form.value.jiazubingshi = row[x];
					disabledForm.value.jiazubingshi = true;
					continue;
				}
				if(x=='zhuyuanjilu'){
					form.value.zhuyuanjilu = row[x];
					disabledForm.value.zhuyuanjilu = true;
					continue;
				}
				if(x=='qitaxiangqing'){
					form.value.qitaxiangqing = row[x];
					disabledForm.value.qitaxiangqing = true;
					continue;
				}
				if(x=='dengjishijian'){
					form.value.dengjishijian = row[x];
					disabledForm.value.dengjishijian = true;
					continue;
				}
			}
			if(row){
				crossRow.value = row
			}
			if(table){
				crossTable.value = table
			}
			if(tips){
				crossTips.value = tips
			}
			if(statusColumnName){
				crossColumnName.value = statusColumnName
			}
			if(statusColumnValue){
				crossColumnValue.value = statusColumnValue
			}
			formVisible.value = true
		}

		context?.$http({
			url: `${context?.$toolUtil.storageGet('sessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
			if(json.hasOwnProperty('juminzhanghao')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.juminzhanghao = json.juminzhanghao
				disabledForm.value.juminzhanghao = true;
			}
			if(json.hasOwnProperty('juminxingming')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.juminxingming = json.juminxingming
				disabledForm.value.juminxingming = true;
			}
			if(json.hasOwnProperty('xingbie')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.xingbie = json.xingbie
				disabledForm.value.xingbie = true;
			}
		})
	}
	//初始化
	//声明父级调用
	defineExpose({
		init
	})
	//关闭
	const closeClick = () => {
		formVisible.value = false
	}
	//富文本
	const editorChange = (e,name) =>{
		form.value[name] = e
	}
	//提交
	const save=()=>{
		var table = crossTable.value
		var objcross = JSON.parse(JSON.stringify(crossRow.value))
		let crossUserId = ''
		let crossRefId = ''
		let crossOptNum = ''
		if(type.value == 'cross'){
			if(crossColumnName.value!=''){
				if(!crossColumnName.value.startsWith('[')){
					for(let o in objcross){
						if(o == crossColumnName.value){
							objcross[o] = crossColumnValue.value
						}
					}
					//修改跨表数据
					changeCrossData(objcross)
				}else{
					crossUserId = context?.$toolUtil.storageGet('userid')
					crossRefId = objcross['id']
					crossOptNum = crossColumnName.value.replace(/\[/,"").replace(/\]/,"")
				}
			}
		}
		formRef.value.validate((valid)=>{
			if(valid){
				if(crossUserId&&crossRefId){
					form.value.crossuserid = crossUserId
					form.value.crossrefid = crossRefId
					let params = {
						page: 1,
						limit: 1000, 
						crossuserid:form.value.crossuserid,
						crossrefid:form.value.crossrefid,
					}
					context?.$http({
						url: `${tableName}/page`,
						method: 'get', 
						params: params 
					}).then(res=>{
						if(res.data.data.total>=crossOptNum){
							context?.$toolUtil.message(`${crossTips.value}`,'error')
							return false
						}else{
							context?.$http({
								url: `${tableName}/${!form.value.id ? "save" : "update"}`,
								method: 'post', 
								data: form.value 
							}).then(res=>{
								context?.$toolUtil.message(`操作成功`,'success',()=>{
									formVisible.value = false
									emit('formModelChange')
								})
							})
						}
					})
				}else{
					context?.$http({
						url: `${tableName}/${!form.value.id ? "save" : "update"}`,
						method: 'post', 
						data: form.value 
					}).then(res=>{
						context?.$toolUtil.message(`操作成功`,'success',()=>{
							formVisible.value = false
							emit('formModelChange')
						})
					})
				}
			}
		})
	}
	//修改跨表数据
	const changeCrossData=(row)=>{
		context?.$http({
			url: `${crossTable.value}/update`,
			method: 'post',
			data: row
		}).then(res=>{})
	}
</script>
<style lang="scss" scoped>
	// 表单
	.formModel_form{
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
			//label
			.el-form-item__label {
			 background: none;
			 font-weight: 500;
			 display: block;
			 width: 150px;
			 min-width: 150px;
			 text-align: right;
			}
			// 内容盒子
			.el-form-item__content {
				display: flex;
				width: calc(100% - 120px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
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
				//日期选择器
				.list_date {
					border: 1px solid #ddd;
					border-radius: 0px;
					width: auto;
					line-height: 36px;
					box-sizing: border-box;
					min-width: 350px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
					}
				}
				// 长文本
				.el-textarea__inner {
					border: 1px solid #ddd;
					border-radius: 0;
					padding: 12px;
					color: #333;
					width: auto;
					font-size: 14px;
					min-height: 180px;
					min-width: 800px;
				}
			}
		}
	}
	// 按钮盒子
	.formModel_btn_box {
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: center;
		.formModel_cancel {
			border: 0;
			cursor: pointer;
			border-radius: 0px;
			padding: 0 24px;
			margin: 0 20px 0 0;
			outline: none;
			color: #fff;
			background: #999;
			width: auto;
			font-size: 14px;
			min-width: 100px;
			height: 36px;
		}
		.formModel_cancel:hover {
		}
		
		.formModel_confirm {
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
		.formModel_confirm:hover {
		}
	}
</style>