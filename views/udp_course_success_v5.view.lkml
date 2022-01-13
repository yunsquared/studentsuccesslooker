view: udp_course_success_v5 {
  sql_table_name: `udp_course_success.udp_course_success_v5`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: failed_courses_so_far {
    type: number
    sql: ${TABLE}.failed_courses_so_far ;;
  }

  dimension: gpa_cumulative {
    type: number
    sql: ${TABLE}.gpa_cumulative ;;
  }

  dimension: grade_on_transcript {
    type: string
    sql: ${TABLE}.grade_on_transcript ;;
  }

  dimension: hs_gpa {
    type: number
    sql: ${TABLE}.hs_gpa ;;
  }

  dimension: hs_rank {
    type: number
    sql: ${TABLE}.hs_rank ;;
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

  dimension: pass_fail {
    type: string
    sql: ${TABLE}.pass_fail ;;
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

  dimension_group: week {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.week_date ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
