select stud.firstname, stud.lastname, enrol.id_year
from student stud
left join enrolment enrol on enrol.id_year = stud.id;