package dao;

import java.sql.ResultSet;

import java.sql.SQLException;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import classes.Book;
import classes.Users;

public class LibDao {
	private JdbcTemplate jdbcTemplate;
	private Users u = new Users();
	// private Book book;

	@Autowired
	public void setjdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public int getNextUserid() {
		String k = "select max(user_id) from userdata";
		@SuppressWarnings("deprecation")
		int a = jdbcTemplate.queryForInt(k);
		return ++a;

	}

	public int BookId() {
		String k = "select max(book_id) from books";
		@SuppressWarnings("deprecation")
		int a = jdbcTemplate.queryForInt(k);
		return ++a;
	}

	public int addUserInfo(Users user) {
		int nextId = getNextUserid();
		String q = "INSERT INTO userdata VALUES(?,?,?,?,?,?)";
		int status = jdbcTemplate.update(q, nextId, user.getUsername(), user.getPassword(), user.getGender(),
				user.getDob(), user.getCountry());
		return status;
	}

	public int addBookInfo(Book book) {
		int nextBid = BookId();
		System.out.println(book.getCountry());
		String q = "INSERT INTO books VALUES(?,?,?,?,?,?,?)";
		int status = jdbcTemplate.update(q, nextBid, book.getBook(), book.getCategory(), book.getAuthour(),
				book.getStatus(), book.getCountry(), book.getQuantity());
		return status;

	}

	public List<Users> getUserInfo() {
		String q = " select * from userdata";
		return jdbcTemplate.query(q, new RowMapper<Users>() {
			@Override
			public Users mapRow(ResultSet rs, int rownumber) throws SQLException {
				Users u = new Users();
				u.setUserId(rs.getInt(1));
				u.setUsername(rs.getString(2));
				u.setPassword(rs.getString(3));
				u.setGender(rs.getString(4));
				u.setDob(rs.getDate(5));
				u.setCountry(rs.getString(6));
				return u;
			}
		});
	}

	public List<Book> getBookInfo() {
		String q = " select * from books";
		return jdbcTemplate.query(q, new RowMapper<Book>() {
			@Override
			public Book mapRow(ResultSet rs, int rownumber) throws SQLException {
				Book b = new Book();
				b.setbId(rs.getInt(1));
				b.setBook(rs.getString(2));
				b.setCategory(rs.getString(3));
				b.setAuthour(rs.getString(4));
				b.setStatus(rs.getString(5));
				b.setCountry(rs.getString(6));
				b.setQuantity(rs.getInt(7));

				return b;
			}
		});

	}

	public List<Book> getBookedInfo() {

		String q = " select ud.user_id,ud.user_name,bs.book_id,bs.book_name,bs.category,bd.borrowed_date,bd.due_date,bd.returned_date from userdata ud,books bs,booked bd where bd.book_id=bs.book_id and bd.user_id=ud.user_id";
		return jdbcTemplate.query(q, new RowMapper<Book>() {
			@Override
			public Book mapRow(ResultSet rs, int rownumber) throws SQLException {
				Book b = new Book();

				b.setUserid(rs.getInt(1));
				b.setUsername(rs.getString(2));
				b.setbId(rs.getInt(3));
				b.setBook(rs.getString(4));
				b.setCategory(rs.getString(5));
				b.setBorroweddate(rs.getDate(6));
				b.setDuedate(rs.getDate(7));
				b.setReturneddate(rs.getDate(8));
				System.out.println(b);
				return b;
			}
		});
	}

	public List<Book> use(String q) {

		return jdbcTemplate.query(q, new RowMapper<Book>() {
			@Override
			public Book mapRow(ResultSet rs, int rownumber) throws SQLException {
				Book b = new Book();

				b.setUserid(rs.getInt(1));
				b.setUsername(rs.getString(2));
				b.setbId(rs.getInt(3));
				b.setBook(rs.getString(4));
				b.setCategory(rs.getString(5));
				b.setBorroweddate(rs.getDate(6));
				b.setDuedate(rs.getDate(7));
				System.out.println(b);
				return b;
			}
		});

	}

	public List<Book> useu(String q) {

		return jdbcTemplate.query(q, new RowMapper<Book>() {
			@Override
			public Book mapRow(ResultSet rs, int rownumber) throws SQLException {
				Book b = new Book();

				b.setbId(rs.getInt(1));
				b.setBook(rs.getString(2));
				b.setCategory(rs.getString(3));
				b.setAuthour(rs.getString(4));
				b.setStatus(rs.getString(5));
				b.setCountry(rs.getString(6));
				b.setQuantity(rs.getInt(7));
				System.out.println(b);
				return b;
			}
		});

	}

	public List<Book> getbyusername(String username) {

		String q = "select ud.user_id,ud.user_name,bs.book_id,bs.book_name,bs.category,bd.borrowed_date,bd.due_date from userdata ud,books bs,booked bd where bd.book_id=bs.book_id and bd.user_id=ud.user_id and ud.user_name ="
				+ "'" + username + "'";
		return use(q);
	}

	public List<Book> getbybookname(String bookname) {

		String q = "select ud.user_id,ud.user_name,bs.book_id,bs.book_name,bs.category,bd.borrowed_date,bd.due_date,bs.status from userdata ud,books bs,booked bd where bd.book_id=bs.book_id and bd.user_id=ud.user_id and bs.book_name="
				+ "'" + bookname + "'";
		return use(q);
	}

	public List<Book> getbyduedate(String duedate) {
		String q = "select ud.user_id,ud.user_name,bs.book_id,bs.book_name,bs.category,bd.borrowed_date,bd.due_date from userdata ud,books bs,booked bd where bd.book_id=bs.book_id and bd.user_id=ud.user_id and bd.due_date= "
				+ "'" + duedate + "'" + "";
		return use(q);
	}

	public List<Book> getbybdate(String bdate) {

		String q = "select ud.user_id,ud.user_name,bs.book_id,bs.book_name,bs.category,bd.borrowed_date,bd.due_date,bs.status from userdata ud,books bs,booked bd where bd.book_id=bs.book_id and bd.user_id=ud.user_id and trunc(borrowed_date)="
				+ "'" + bdate + "'";
		return use(q);
	}

	public List<Book> getbycategory(String category) {
		String q = "select * from books where category =" + "'" + category + "'";
		return jdbcTemplate.query(q, new RowMapper<Book>() {
			@Override
			public Book mapRow(ResultSet rs, int rownumber) throws SQLException {
				Book b = new Book();

				b.setbId(rs.getInt(1));
				b.setBook(rs.getString(2));
				b.setCategory(rs.getString(3));
				b.setAuthour(rs.getString(4));
				b.setStatus(rs.getString(5));
				b.setCountry(rs.getString(6));
				System.out.println(b);
				return b;
			}
		});

	}

	public int userlogin(String uname, String pword) {
		String q = "select user_name,password from userdata where user_name=" + "'" + uname + "'";

		jdbcTemplate.query(q, new RowMapper<Users>() {

			@Override
			public Users mapRow(ResultSet rs, int rownumber) throws SQLException {
				u.setUsername(rs.getString(1));
				u.setPassword(rs.getString(2));
				return u;
			}
		});

		if (u.getUsername() == null || u.getPassword() == null)
			return 0;
		int k = uname.compareTo(u.getUsername());
		int j = pword.compareTo(u.getPassword());

		if (k == 0 && j == 0)
			return 1;

		return 0;

	}

	public List<Book> getbyauthor(String author) {
		String q = "select * from books where author=" + "'" + author + "'";
		System.out.println(q);
		return useu(q);
	}

	public List<Book> getbyubookname(String bookname) {
		String q = "select * from books where book_name=" + "'" + bookname + "'";
		System.out.println(q);
		return useu(q);
	}

	public List<Book> getBookDetails(String bookiD) {
		String q = "select * from books where book_id=" + bookiD;
		return useu(q);
	}

	public int updatebook(int quantity, String bookId) {
		String q = "update books set quantity=" + quantity + "where book_id=" + bookId;
		int status = jdbcTemplate.update(q);
		return status;
	}

	public List<Book> histroy(String username) {
		String q = "select ud.user_id,ud.user_name,bs.book_id,bs.book_name,bd.borrowed_date,bd.due_date,bd.returned_date from userdata ud,books bs,booked bd  where bd.book_id=bs.book_id and bd.user_id=ud.user_id and user_name='"
				+ username + "'";

		return jdbcTemplate.query(q, new RowMapper<Book>() {
			@Override
			public Book mapRow(ResultSet rs, int rownumber) throws SQLException {
				Book b = new Book();
				b.setUserid(rs.getInt(1));
				b.setUsername(rs.getString(2));
				b.setbId(rs.getInt(3));
				b.setBook(rs.getString(4));
				b.setBorroweddate(rs.getDate(5));
				b.setDuedate(rs.getDate(6));
				b.setReturneddate(rs.getDate(7));

				return b;
			}
		});

	}

	@SuppressWarnings("deprecation")
	public void addBook(int userid, int bid) {

		String q = "insert into booked values(" + bid + "," + userid + "," + "sysdate,sysdate+7,'')";
		String k = "update books set quantity=quantity-1 where book_id=" + bid;
		String a = "select quantity from books where book_id=" + bid;
		String b = "select book_id,returned_date from booked where book_id=" + bid + "and user_id=" + userid;
		String c = "select book_id,returned_date from booked where user_id=" + userid;

		int quantity = jdbcTemplate.queryForInt(a);
		int a1 = 0;
		int a2 = 0;
		int a3 = 0;
		int a4 = 0;

		List<Book> c1 = userbook(c);
		for (Book book : c1) {
			if (book.getReturneddate() == null) {

				a4++;

			}
		}

		List<Book> bl = userbook(b);
		if (a4 < 3) {
			for (Book book : bl) {

				if (book.getbId() == bid) {

					for (Book book1 : bl) {
						if (book1.getReturneddate() == null) {

							a3 = 1;
							break;
						}

					}
					if (quantity > 0 && a3 == 0) {
						a1 = 1;
						System.out.println("entired");
						jdbcTemplate.execute(q);
						jdbcTemplate.execute(k);

					}
					break;

				}
			}

			for (Book book : bl) {

				if (book.getbId() == bid) {
					a2++;
				}
			}

			System.out.println(a1);
			System.out.println(a2);
			if (a1 == 0 && a2 == 0 && quantity > 0) {
				jdbcTemplate.execute(q);
				jdbcTemplate.execute(k);

			}
		}
	}

	public List<Book> userbook(String q) {

		return jdbcTemplate.query(q, new RowMapper<Book>() {
			@Override
			public Book mapRow(ResultSet rs, int rownumber) throws SQLException {
				Book b = new Book();
				b.setbId(rs.getInt(1));
				b.setReturneddate(rs.getDate(2));
				return b;
			}
		});

	}

	public void returnBook(String userid, String bid) {

		String q = "update booked set returned_date=trunc(sysdate)where user_id=" + userid + "and book_id=" + bid;
		String k = "update books set quantity=quantity+1 where book_id=" + bid;
		String a = "select book_Id,user_id,returned_date from booked where user_id=" + userid + "and book_id=" + bid;

		List<Book> bookList = user(a);

		for (Book book : bookList) {
			try {

				if (book.getReturneddate() == null) {

					jdbcTemplate.execute(q);
					jdbcTemplate.execute(k);

				} else {
					System.out.println("Book is alredy returnd.....");
				}
			} catch (Exception e) {
			}
		}

	}

	public List<Book> user(String q) {

		return jdbcTemplate.query(q, new RowMapper<Book>() {
			@Override
			public Book mapRow(ResultSet rs, int rownumber) throws SQLException {
				Book b = new Book();
				b.setbId(rs.getInt(1));
				b.setUserid(rs.getInt(2));
				b.setReturneddate(rs.getDate(3));
				return b;
			}
		});

	}

	public List<Users> userdetails(String username) {
		String q = "select user_id,user_name from userdata where user_name='" + username + "'";
		return userId(q);

	}

	public List<Users> userId(String q) {

		return jdbcTemplate.query(q, new RowMapper<Users>() {
			@Override
			public Users mapRow(ResultSet rs, int rownumber) throws SQLException {
				Users b = new Users();
				b.setUserId(rs.getInt(1));
				b.setUsername(rs.getString(2));
				return b;
			}
		});

	}

}