connection: "student_success_demo"

# include all the views
include: "/views/**/*.view"

datagroup: udp_student_success_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: udp_student_success_demo_default_datagroup

explore: udp_course_success_v7 {}

explore: udp_course_success_v5 {}

explore: udp_course_success_v2 {}

explore: udp_course_success_v3 {}

explore: udp_course_success_v1 {}

explore: udp_course_success_yunyun_mock {}

explore: udp_course_success_v4 {}

explore: udp_course_success_v6 {}

explore: udp_course_success_yunyun_mock13 {}

explore: udp_course_success_yunyun_mock12 {}
