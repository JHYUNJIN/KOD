package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	private MainAction mainAction;
	private ProductDetailAction productDetailAction;
	private MapPageAction mapPageAction;
	private JoinPageAction joinPageAction;
	private LoginAction loginAction;
	private LoginPageAction loginPageAction;
	private LogoutAction logoutAction;
//	private MyPageAction myPageAction;
	private AddressAction addressAction;
	private WishListAction wishListAction;
	private AlertAction alertAction;
	private PayInfoPage payInfoPage;
    private PaymentPageAction paymentPageAction;
    private OrderListAction orderListAction;
    private CheckWishedAction checkWishedAction;
    
	public FrontController() {
        super();
        mainAction = new MainAction();
        productDetailAction = new ProductDetailAction();
        mapPageAction = new MapPageAction();
        joinPageAction = new JoinPageAction();
        loginAction = new LoginAction();
        loginPageAction = new LoginPageAction();
        logoutAction = new LogoutAction();
//        myPageAction = new MyPageAction();
        addressAction = new AddressAction();
        wishListAction = new WishListAction();
        checkWishedAction = new CheckWishedAction();
        alertAction = new AlertAction();
        payInfoPage = new PayInfoPage();
        paymentPageAction = new PaymentPageAction();
        orderListAction = new OrderListAction();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	public void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uri = request.getRequestURI();
		String cp = request.getContextPath();
		String action = uri.substring(cp.length());
		ActionForward forward = null;
		if(action.equals("/main.do")) {
			forward = mainAction.execute(request, response);
		}
		else if(action.equals("/store.do")) {
			forward = checkWishedAction.execute(request, response);
		}
		else if(action.equals("/productDetail.do")) {
			forward = productDetailAction.execute(request, response);
		}
		else if(action.equals("/mapPage.do")) {
			forward = mapPageAction.execute(request, response);
		}
		else if(action.equals("/joinPage.do")) {
			forward = joinPageAction.execute(request, response);
		}
		else if(action.equals("/loginPage.do")) {
			forward = loginPageAction.execute(request, response);
		}
		else if(action.equals("/login.do")) {
			forward = loginAction.execute(request, response);
		}
		else if(action.equals("/logout.do")) {
			forward = logoutAction.execute(request, response);
		}
		else if(action.equals("/MyPage.do")) {
//			forward = myPageAction.execute(request, response);
		}
		else if(action.equals("/address.do")) {
			forward = addressAction.execute(request, response);
		}
		else if(action.equals("/checkWished.do")) {
			forward = checkWishedAction.execute(request,response);
		}
		else if(action.equals("/wishList.do")) {
			System.out.println("wishList.do 들어옴");
			forward = wishListAction.execute(request, response);
		}
		else if(action.equals("/alert.do")) {
			forward= alertAction.execute(request, response);
		}
		else if(action.equals("/payInfoPage.do")) {
			System.out.println("[로그]");
			System.out.println(request.getParameter("productID"));
			forward = payInfoPage.execute(request, response);
		}
		else if(action.equals("/paymentPage.do")) {
			System.out.println("[로그]");
			System.out.println(request.getParameter("productID"));
			forward = paymentPageAction.execute(request, response);
		}
		else if(action.equals("/orderList.do")) {
			System.out.println("[로그2]");
			System.out.println("orderList pid : "+request.getParameter("productID"));
			forward = orderListAction.execute(request, response);
		}
		
		if(forward == null) {
			// 에러 상황
		}
		
		if(forward.isRedirect()) {
			response.sendRedirect(forward.getPath());
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);
		}
	}

}