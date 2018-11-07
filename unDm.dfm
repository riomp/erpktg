object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 1092
  Top = 131
  Height = 509
  Width = 274
  object adoConn: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=\\server\Database (' +
      'f)\0_SDP\SDP.mdb;Persist Security Info=False;'
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 20
    Top = 10
  end
  object zConn: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Properties.Strings = (
      'compress=1')
    DesignConnection = True
    HostName = '192.168.1.201'
    Port = 0
    Database = 'ktg_db4'
    User = 'root'
    Password = 'itktg123'
    Protocol = 'mysql'
    Left = 20
    Top = 66
  end
  object zConnCCR: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    DesignConnection = True
    HostName = '192.168.0.243'
    Port = 0
    Database = 'ppic_prd_db'
    User = 'root'
    Password = 'sdpadmin'
    Protocol = 'mysql'
    Left = 90
    Top = 71
  end
  object zConn2: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    DesignConnection = True
    HostName = 'localhost'
    Port = 0
    Database = 'mutasistok_db'
    User = 'root'
    Password = 'samator'
    Protocol = 'mysql'
    Left = 90
    Top = 10
  end
  object zConnT: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Port = 0
    Protocol = 'mysql'
    Left = 25
    Top = 130
  end
  object con171: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    HostName = '192.168.0.171'
    Port = 0
    Database = 'mutasistok_db_243'
    User = 'root'
    Password = 'samator'
    Protocol = 'mysql'
    Left = 80
    Top = 125
  end
  object zConnF: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    DesignConnection = True
    HostName = '192.168.1.200'
    Port = 0
    Database = 'ftm'
    User = 'root'
    Protocol = 'mysql'
    Left = 52
    Top = 197
  end
end
