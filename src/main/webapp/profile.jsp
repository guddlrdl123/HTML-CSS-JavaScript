<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta characterset='utf-8'>
    <title>첫 번째 포트폴리오</title>
    <style>
        /* 전체 선택자 : 전체 태그가 공통으로 적용되어질 값을 선택할 때 사용. */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-color: #a9a9df;
            color: #2f3640;
            font-family: 'Malgun Gothic', sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 50px;
        }
        /* [2] 프로필 카드: Flexbox로 내부 정렬 */
        #profile-card {
            background: gray;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
            display: flex; /* 가로 정렬의 시작 */
            gap: 30px;     /* 부품 간의 간격 */
            align-items: center;
            width: 100%;
            max-width: 600px;
        }

        /* [3] 이미지 영역 꾸미기 */
        .photo-area {
            width: 120px;
            height: 120px;
            background: #dcdde1;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
        }

        /* [4] 버튼 스타일 */
        button {
            background: #448aff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 15px;
        }
    </style>
</head>

<body>
    <%-- 1단계 : html을 통한 데이터의 뼈대 구성 --%>
    <header>
        <h1>My Coding Journey</h1>
    </header>
    <%-- 실제 내용 --%>
    <main>
        <article id="profile-card">
            <div class="photo-area">PHOTO</div>
            <div class='info-area'>
                <h2>전형익</h2>
                <p>배우는 것이 즐거운 개발자</p>
                <button id='msg-btn'>오늘의 한 마디</button>
                <p id="display-msg"></p>
            </div>
        </article>
        <section id="skills">
            <h3>My Skill</h3>
            <ul>
                <li>JAVA</li>
                <li>HTML</li>
                <li>SQL</li>
            </ul>
        </section>
    </main>
    <footer>
        <p>&copy; 2025 Hyeongik develop portfolio </p>
    </footer>
</body>

</html>