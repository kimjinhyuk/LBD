import React from 'react'
import { BrowserRouter, Route, Link } from 'react-router-dom';
import Rooms from './Rooms';

export default function App() {
  return (
    <BrowserRouter> {/* react-router-dom 을 사용하기 위해서 전체를 브라우저 라우터로 설정 */}
      <div style={{ padding: 20, border: '5px solid gray'}}>
        <Link to="/">홈</Link>  {/* 버튼을 통해서 링크 컴포넌트 사용 */}
        <br />
        <Link to="/photo">사진</Link> 
        <br />
        <Link to="/rooms">방소개</Link>
        <br />
        <Route exact path="/" component={Home} /> 
        <Route path="/photo" component={Photo} /> {/* Route 컴포넌트로 각 페이지를 정의 */}
        {/* <Route path="/photo" component={PhotoButtom} /> path 속성값은 공유할 수 있다 */}
        <Route path="/rooms" component={Rooms} /> 
      </div>
    </BrowserRouter>
  );
}

function Home ({ match }) {
  return <h2> 이곳은 홈페이지 입니다</h2>;
}
function Photo ({ match }) {
  return <h2> 여기서 사진을 감상하세요</h2>;
}