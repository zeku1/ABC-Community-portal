<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="../../header.jsp">
    <jsp:param value="Send Bulk Email" name="HTMLtitle" />
    <jsp:param value="../css/zephyr.css" name="isNested" />
</jsp:include>

<div class="container p-5 p-5">
  <div class="p-5 p-5">
  	<h1>Bulk Email</h1>
  </div>
  <form:form action="send-bulk" method="post" modelAttribute="sendBulk">
    <div class="form-floating mb-3 p-5 p-5">
      <input type="text" class="form-control" id="subject" name="emailSubject">
      <label for="subject">Subject</label>
    </div>
    <div class="form-floating mb-3 p-5 p-5">
      <textarea class="form-control" id="body" name="emailBody"></textarea>
      <label for="body">Body</label>
    </div>
    <button type="submit" class="btn btn-primary">Send Message to All</button>
  </form:form>
  <div class="p-5 p-5 text-white">
  </div>
</div>

<jsp:include page="../../footer.jsp"></jsp:include>