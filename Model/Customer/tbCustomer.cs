using System;
namespace Model.Customer
{
	/// <summary>
	/// tbCustomer:ʵ����(����˵���Զ���ȡ���ݿ��ֶε�������Ϣ)
	/// </summary>
	[Serializable]
	public partial class tbCustomer
	{
		public tbCustomer()
		{}
		#region Model
		private int _id;
		private string _username;
		private string _password;
        /// <summary>
        /// 1�������߿ͻ�,2:��Ӧ�̿ͻ�
        /// </summary>
		private int _types=1;
		private string _c_name="  ";
		private string _c_code="no";
		private string _tel=" ";
		private string _mobile=" ";
		private string _email="  ";
        private string _link_men = "  ";
        private string _address = "  ";
        private string _remark = "  ";
		private string _rank="   ";
		private int? _state=0;
        private string _typename;
        private string pinPai = "";

        public string PinPai
        {
            get { return pinPai; }
            set { pinPai = value; }
        }
        private string proName = "";

        public string ProName
        {
            get { return proName; }
            set { proName = value; }
        }

        public string Typename
        {
            get { return _typename; }
            set { _typename = value; }
        }
		/// <summary>
		/// �������Զ�����
		/// </summary>
		public int id
		{
			set{ _id=value;}
			get{return _id;}
		}
		/// <summary>
		/// ��¼��
		/// </summary>
		public string username
		{
			set{ _username=value;}
			get{return _username;}
		}
		/// <summary>
		/// ����
		/// </summary>
		public string password
		{
			set{ _password=value;}
			get{return _password;}
		}
		/// <summary>
		/// �ͻ�����
		/// </summary>
		public int types
		{
			set{ _types=value;}
			get{return _types;}
		}
		/// <summary>
		/// �ͻ���
		/// </summary>
		public string c_name
		{
			set{ _c_name=value;}
			get{return _c_name;}
		}
		/// <summary>
		/// ���֤����
		/// </summary>
		public string c_code
		{
			set{ _c_code=value;}
			get{return _c_code;}
		}
		/// <summary>
		/// �绰����
		/// </summary>
		public string tel
		{
			set{ _tel=value;}
			get{return _tel;}
		}
		/// <summary>
		/// �ֻ�����
		/// </summary>
		public string mobile
		{
			set{ _mobile=value;}
			get{return _mobile;}
		}
		/// <summary>
		/// �ʼ�
		/// </summary>
		public string email
		{
			set{ _email=value;}
			get{return _email;}
		}
		/// <summary>
		/// ��ϵ��
		/// </summary>
		public string link_men
		{
			set{ _link_men=value;}
			get{return _link_men;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string address
		{
			set{ _address=value;}
			get{return _address;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string remark
		{
			set{ _remark=value;}
			get{return _remark;}
		}
		/// <summary>
		/// �����ʺ�
		/// </summary>
		public string rank
		{
			set{ _rank=value;}
			get{return _rank;}
		}
		/// <summary>
		/// ״̬
		/// </summary>
		public int? state
		{
			set{ _state=value;}
			get{return _state;}
		}
		#endregion Model

	}
}

