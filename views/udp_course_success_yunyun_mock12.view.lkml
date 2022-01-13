view: udp_course_success_yunyun_mock12 {
  sql_table_name: `udp_course_success.udp_course_success_yunyun_mock12`
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

  dimension: hs_gpa {
    type: number
    sql: ${TABLE}.hs_gpa ;;
  }

  dimension: in_honors_program {
    type: yesno
    sql: ${TABLE}.in_honors_program ;;
  }

  dimension: is_active_duty {
    type: yesno
    sql: ${TABLE}.is_active_duty ;;
  }

  dimension: is_english_first_language {
    type: yesno
    sql: ${TABLE}.is_english_first_language ;;
  }

  dimension: is_veteran {
    type: yesno
    sql: ${TABLE}.is_veteran ;;
  }

  dimension: last_undergraduate_school_type {
    type: string
    sql: ${TABLE}.last_undergraduate_school_type ;;
  }

  dimension: pc_course_completed {
    type: yesno
    sql: ${TABLE}.pc_course_completed ;;
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
