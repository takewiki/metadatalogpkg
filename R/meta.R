#' 查询最大ID
#'
#' @param table_name 表名
#'
#' @return 返回值
#' @export
#'
#' @examples
#' meta_maxId()
meta_maxId <- function(table_name ='t_rapi_ecslog_queryList') {
  token='EDCFD199-AF57-4591-8BA9-CD44415B816B'
  conn = tsda::odbc_getConn(token = token)
  sql = paste0("select isnull(max(FId),0) as FId from ",table_name,"")
  data = tsda::sql_select2(token = token,sql = sql)
  res =data$FId
  return(res)
}


#' 查询下一个ID
#'
#' @param table_name 表名
#'
#' @return 返回值
#' @export
#'
#' @examples
#' meta_maxId()
meta_nextId<- function(table_name ='t_rapi_ecslog_queryList') {
  res =meta_maxId(table_name = table_name) +1
  return(res)
}
