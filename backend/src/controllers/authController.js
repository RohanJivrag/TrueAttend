const db = require("../config/db");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");

const teacherLogin = async (req, res) => {
    try {
        const { email, password } = req.body;

        if (!email || !password) {
            return res.status(400).json({
                success: false,
                message: "Email and password are required"
            });
        }

        const [teachers] = await db.query(
            "SELECT * FROM teachers WHERE email = ?",
            [email]
        );

        if (teachers.length === 0) {
            return res.status(401).json({
                success: false,
                message: "Invalid email or password"
            });
        }

        const teacher = teachers[0];

        const passwordMatch = await bcrypt.compare(
            password,
            teacher.password_hash
        );

        if (!passwordMatch) {
            return res.status(401).json({
                success: false,
                message: "Invalid email or password"
            });
        }

        const token = jwt.sign(
            {
                teacher_id: teacher.teacher_id,
                role: "teacher"
            },
            process.env.JWT_SECRET,
            {
                expiresIn: "7d"
            }
        );

        res.json({
            success: true,
            message: "Teacher login successful",
            token,
            teacher: {
                teacher_id: teacher.teacher_id,
                teacher_name: teacher.teacher_name,
                email: teacher.email,
                department: teacher.department
            }
        });

    } catch (error) {
        console.error("Teacher Login Error:", error);

        res.status(500).json({
            success: false,
            message: "Server error"
        });
    }
};

const studentLogin = async (req, res) => {
    try {
        const { prn, password } = req.body;

        if (!prn || !password) {
            return res.status(400).json({
                success: false,
                message: "PRN and password are required"
            });
        }

        const [students] = await db.query(
            "SELECT * FROM students WHERE prn = ?",
            [prn]
        );

        if (students.length === 0) {
            return res.status(401).json({
                success: false,
                message: "Invalid PRN or password"
            });
        }

        const student = students[0];

        const passwordMatch = await bcrypt.compare(
            password,
            student.password_hash
        );

        if (!passwordMatch) {
            return res.status(401).json({
                success: false,
                message: "Invalid PRN or password"
            });
        }

        const token = jwt.sign(
            {
                student_id: student.student_id,
                role: "student"
            },
            process.env.JWT_SECRET,
            {
                expiresIn: "7d"
            }
        );

        res.json({
            success: true,
            message: "Student login successful",
            token,
           student: {
    student_id: student.student_id,
    student_name: student.student_name,
    prn: student.prn,
    department: student.department,
    year: student.year,
    semester: student.semester,
    division: student.division,
    batch: student.batch
    }   
        });

        

    } catch (error) {
        console.error("Student Login Error:", error);

        res.status(500).json({
            success: false,
            message: "Server error"
        });
    }
};

module.exports = {
    studentLogin,
    teacherLogin
};