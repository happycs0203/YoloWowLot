<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- modal popup -->
<%
// 	String test = request.getParameter("sc_num");
// 	System.out.println("==============================>" +tests);
%>	


	<div class="modal fade" id="SigningCancel" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" id="contactLabel">내 공간 삭제</h4>
                </div>
                
                <div class="modal-body">
                        <div class="row">
                        	<input type="hidden" id="pri_num" name="pri_num" value="" />
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 cfItem">
                                <h3>선택하신 공간을 삭제하시겠습니까? </h3>
                             </div>
                        </div>
                </div>
                
                <div class="modal-footer">
					<a href="#" id="btn_delete" class="btn btn-round btn-o btn-green">Yes</a>
                    <a href="#" data-dismiss="modal" class="btn btn-round btn-o btn-gray">No</a>
                </div>
				</div>
		</div>
	</div>
