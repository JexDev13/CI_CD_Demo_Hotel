package serverlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.entity.Room;
import model.services.RoomService;
import java.io.IOException;
import java.util.List;


@WebServlet(name="room-servlet", urlPatterns = {"/room-servlet"})
public class RoomServlet extends HttpServlet {
    private RoomService roomService;
    public void init() {
        roomService = new RoomService();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Room> availableRooms = roomService.getAllRooms();
        request.setAttribute("allRooms", availableRooms);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
