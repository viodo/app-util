unit DelphiEx;

(**
 * @desc   delphi ��չ��Ԫ
 * @author chenxc
 * @date   2020��11��30��17:07:43
 * @note   ע�⣺��Ҫ�ڹ����ļ�(.dpr)�����ô˵�Ԫ���ļ�(.pas)�е�uses��ǰ�����ShareMem
 *)

interface

(**
 * @desc   get����
 * @param  url      �����ַ
 * @param  resp     http����ֵ(ָ������)
 * @param  headers  ����ͷ��Ĭ��Ϊnil. eg: {"a":"abc", "b": "cba"}
 * @param  proxyUrl ����·��
 * @return 0 �ɹ���-1ʧ��
 *)
function HttpGet(url: PChar; var resp: PChar; headers: PChar = nil; proxyUrl: PChar = nil): Integer; cdecl; external 'DelphiEx.dll';

(**
 * @desc   post����(content-type: form-data)
 * @param  url      �����ַ
 * @param  data     ��������� eg: {"a":"abc", "b": "cba"}
 * @param  resp     http����ֵ(ָ������)
 * @param  headers  ����ͷ��Ĭ��Ϊnil. eg: {"a":"abc", "b": "cba"}
 * @param  proxyUrl ����·��
 * @return 0 �ɹ���-1ʧ��
 *)
function HttpPost(url: PChar; data: PChar; var resp: PChar; headers: PChar = nil; proxyUrl: PChar = nil): Integer; cdecl; external 'DelphiEx.dll';

(**
 * @desc   post����(content-type: application/json)
 * @param  url      �����ַ
 * @param  data     ��������� eg: {"a":"abc", "b": "cba"}
 * @param  resp     http����ֵ(ָ������)
 * @param  headers  ����ͷ��Ĭ��Ϊnil. eg: {"a":"abc", "b": "cba"}
 * @param  proxyUrl ����·��
 * @return ����ֵ      0 �ɹ���-1: headers���� -2: ���������ʽ��ʧ�ܣ� -3: Http����ʧ��
 *)
function HttpPostJson(url: PChar; data: PChar; var resp: PChar; headers: PChar = nil; proxyUrl: PChar = nil): Integer; cdecl; external 'DelphiEx.dll';

(**
 * @desc   �ϴ��ļ�
 * @param  url          �����ַ
 * @param  fieldName    �ֶ����� eg��file
 * @param  filePath     �ļ���ַ eg��E://a.jpg
 * @param  resp         http����ֵ(ָ������)
 * @param  data         ���������Ĭ��Ϊnil. eg: {"a":"abc", "b": "cba"}
 * @param  headers      ����ͷ��Ĭ��Ϊnil. eg: {"a":"abc", "b": "cba"}
 * @param  proxyUrl     ����·��
 * @return ����ֵ       0 �ɹ���-1: headers����-2���������� -3: Http����ʧ��
 *)
function UploadFile(url: PChar; fieldName: PChar; filePath: PChar; var resp: PChar; data: PChar = nil; headers: PChar = nil; proxyUrl: PChar = nil): Integer; cdecl; external 'DelphiEx.dll';

(**
 * @desc   �����ļ�
 * @param  url          �����ַ
 * @param  filename     �ļ��������� eg��E://test.jpg
 * @param  headers      ����ͷ��Ĭ��Ϊnil. eg: {"a":"abc", "b": "cba"}
 * @param  proxyUrl     ����·��
 * @return ����ֵ       0 �ɹ���-1: headers���� -3: Http����ʧ��
 *)
function DownloadFile(url: PChar; filename: PChar; headers: PChar = nil; proxyUrl: PChar = nil): Integer; cdecl; external 'DelphiEx.dll';

implementation

end.

