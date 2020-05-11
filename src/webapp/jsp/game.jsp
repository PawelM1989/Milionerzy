<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="header.jsp"/>
<br>
<c:if test="${not empty errorName}"><h1>${errorName}</h1></c:if>
<div class="container">
    <h3>Pytanie nr ${currentNumber}/15</h3>
    <div class="progress">
        <c:if test="${currentNumber<6}"><div class="progress-bar progress-bar-success" role="progressbar" style="width:${currentNumber*6.6666}%"></c:if>
        <c:if test="${currentNumber>5}"><div class="progress-bar progress-bar-success" role="progressbar" style="width:33.3333%"></c:if>
            I ETAP
        </div>
            <c:if test="${currentNumber<6}"><div class="progress-bar progress-bar-warning" role="progressbar" style="width:0%"></c:if>
                <c:if test="${currentNumber>5 && currentNumber<11}"><div class="progress-bar progress-bar-warning" role="progressbar" style="width:${currentNumber*6.6666-33.3333}%"></c:if>
                    <c:if test="${currentNumber>10}"><div class="progress-bar progress-bar-warning" role="progressbar" style="width:33.3333%"></c:if>
                        II ETAP
        </div>
                    <c:if test="${currentNumber<11}"><div class="progress-bar progress-bar-danger" role="progressbar" style="width:0%"></c:if>
                    <c:if test="${currentNumber>10 && currentNumber<16}"><div class="progress-bar progress-bar-danger" role="progressbar" style="width:${currentNumber*6.6666-66.6666}%"></c:if>
                    <c:if test="${currentNumber>15}"><div class="progress-bar progress-bar-danger" role="progressbar" style="width:33.3333%"></c:if>

            III ETAP
        </div>
    </div>
</div>
<div class="container">
    <h2>${currentQuestion.text}</h2>
    <div class="btn-group btn-group-justified">
        <a href="/game?answer=A" class="btn btn-primary">A: ${currentQuestion.answerA}</a>
        <a href="/game?answer=B" class="btn btn-primary">B: ${currentQuestion.answerB}</a>
    </div>
    <div class="btn-group btn-group-justified">
        <a href="/game?answer=C" class="btn btn-primary">C: ${currentQuestion.answerC}</a>
        <a href="/game?answer=D" class="btn btn-primary">D: ${currentQuestion.answerD}</a>
    </div>
</div>
${answer}
</body>
</html>