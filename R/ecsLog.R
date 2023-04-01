#' 写入日志
#'
#' @param table_name 表名
#' @param FToken api token
#' @param FStartDate start
#' @param FEndDate end
#' @param FCount  res count
#' @param FIsDo  status
#'
#' @return return value
#' @export
#'
#' @examples
#' logger_api_ecslog_queryList()
logger_api_ecslog_queryList <- function(table_name='t_rapi_ecslog_queryList',
                                        FToken='api_token',
                                        FStartDate='2023-04-01',
                                        FEndDate='2023-03-31',
                                        FIsDo = 2,
                                        FCount =100) {
  Fid = meta_nextId(table_name = table_name)
  sql =paste0("insert into ",table_name,"
values(",Fid,",'",FToken,"','",FStartDate,"','",FEndDate,"', ",FIsDo," ,",FCount,",getdate())")
  token='EDCFD199-AF57-4591-8BA9-CD44415B816B'
  conn = tsda::odbc_getConn(token = token)
  tsda::sql_update2(token = token,sql_str = sql)
}


#' 写入日志
#'
#' @param table_name 表名
#' @param FToken api token
#' @param FBillNo billno
#' @param FCount  res count
#'
#' @return return value
#' @export
#'
#' @examples
#' logger_api_ecslog_queryBill()
logger_api_ecslog_queryBill <- function(table_name='t_rapi_ecslog_queryBill',
                                        FToken='api_token',
                                        FBillNo='abc',
                                        FCount =100) {
  Fid = meta_nextId(table_name = table_name)
  sql =paste0("insert into ",table_name,"
values(",Fid,",'",FToken,"','",FBillNo,"',",FCount,",getdate())")
  token='EDCFD199-AF57-4591-8BA9-CD44415B816B'
  conn = tsda::odbc_getConn(token = token)
  tsda::sql_update2(token = token,sql_str = sql)
}
