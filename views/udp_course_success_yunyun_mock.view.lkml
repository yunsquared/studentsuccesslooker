view: udp_course_success_yunyun_mock {
  sql_table_name: `udp_course_success.udp_course_success_yunyun_mock`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: gpa_cumulative {
    type: number
    sql: ${TABLE}.gpa_cumulative ;;
  }

  dimension: in_honors_program {
    type: yesno
    sql: ${TABLE}.in_honors_program ;;
  }

  dimension: is_active_duty {
    type: yesno
    sql: ${TABLE}.is_active_duty ;;
  }

  dimension: is_veteran {
    type: yesno
    sql: ${TABLE}.is_veteran ;;
  }

  dimension: person_id {
    type: number
    sql: ${TABLE}.person_id ;;
  }

  dimension: term_number {
    type: number
    sql: ${TABLE}.term_number ;;
  }

  dimension: us_residency {
    type: string
    sql: ${TABLE}.us_residency ;;
  }

  dimension: us_state_residency {
    type: string
    sql: ${TABLE}.us_state_residency ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
