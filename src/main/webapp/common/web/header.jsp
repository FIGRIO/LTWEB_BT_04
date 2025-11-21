<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>

<div class="container py-3">
    <div class="row align-items-center">
        <div class="col-md-3">
            <a href="<c:url value='/home'/>" class="text-decoration-none text-dark fs-3 fw-bold">
                <i class="fa-solid fa-film text-primary"></i> IoTStar
            </a>
        </div>

        <div class="col-md-5">
            <form action="search" method="get" class="d-flex">
                <input class="form-control me-2" type="search" name="keyword" placeholder="Tìm kiếm video, danh mục..." aria-label="Search">
                <button class="btn btn-primary" type="submit"><i class="fas fa-search"></i></button>
            </form>
        </div>

        <div class="col-md-4 text-end">
            <c:if test="${sessionScope.currentUser == null}">
                <a href="<c:url value='/login'/>" class="btn btn-outline-primary me-2">Đăng nhập</a>
                <a href="<c:url value='/register'/>" class="btn btn-primary">Đăng ký</a>
            </c:if>
            
            <c:if test="${sessionScope.currentUser != null}">
                <div class="dropdown d-inline-block">
                    <button class="btn btn-light dropdown-toggle" type="button" id="userMenu" data-bs-toggle="dropdown">
                        <i class="fas fa-user-circle fa-lg"></i> ${sessionScope.currentUser.fullname}
                    </button>
                    <ul class="dropdown-menu dropdown-menu-end">
                        <li><a class="dropdown-item" href="<c:url value='/profile'/>">Hồ sơ</a></li>
                        <li><a class="dropdown-item" href="<c:url value='/my-favorites'/>">Video yêu thích</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item text-danger" href="<c:url value='/logout'/>">Đăng xuất</a></li>
                    </ul>
                </div>
            </c:if>
        </div>
    </div>
</div>