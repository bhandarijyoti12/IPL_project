

-------------------------------------------------------------------Creating Base Tables------------------------------------------------------------------------------------------------------

    create table JB_Team_details
        (   Team_id number not null constraint team_pk Primary Key,
            Team_name varchar2(30),
            Short_form varchar2(10)
            );

    insert into JB_Team_details values (1, 'Chennai Super Kings', 'CSK');
    insert into JB_Team_details values (2, 'Delhi Daredevils', 'DD');
    insert into JB_Team_details values (3, 'Kings XI Punjab', 'KXIP');
    insert into JB_Team_details values (4, 'Kolkata Knight Riders', 'KKR');
    insert into JB_Team_details values (5, 'Mumbai Indians', 'MI');
    insert into JB_Team_details values (6, 'Rajasthan Royals', 'RR');
    insert into JB_Team_details values (7, 'Royal Challengers Bangalore', 'RCB');
    insert into JB_Team_details values (8, 'Sunrisers Hyderabad', 'SRH');


    drop table JB_Team_details;
    select * from JB_Team_details;


    create sequence seq_score
         minvalue 9
         maxvalue 2000
         increment by 1
         cache 100;

         create sequence seq_game
         minvalue 200
         start with 200
         maxvalue 10000
         increment by 1
         cache 100;

      DROP SEQUENCE seq_score;
      DROP SEQUENCE seq_game;

         create table JB_Team_score
    (
        Score_id number(5) not null constraint score_pk Primary key,
        Team_id number constraint score_team_id_fk references JB_Team_details(Team_id),
        Runs number(10),
        Wickets_lost number(10),
        Overs number(3,1),
        Batting  VARCHAR(20),
        Bowling  VARCHAR2(20),
        Home varchar2(10),
        Away varchar2(10),
        Game_id number (10),
        Interruption varchar2(10)
        );

    insert into JB_Team_score values (seq_score.nextval, 5, 165, 4, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 1, 169, 9, 19.5, 'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 2, 166, 7, 20,   'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 3, 167, 4, 18.5, 'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 7, 176, 7, 20,   'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 4, 177, 6, 18.5, 'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 6, 125, 5, 17.5, 'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 8, 127, 1, 15.5, 'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 4, 202, 6, 20,   'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 1, 205, 5, 19.5, 'No',  'Yes', 'Yes',  'No',seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 6, 71,  5,  6,     'Yes', 'No',  'Yes', 'No',seq_game.nextval, 'Yes');
    insert into JB_Team_score values (seq_score.nextval, 2, 60,  4,  6,    'No',  'Yes', 'No',  'Yes',seq_game.currval, 'Yes');
    insert into JB_Team_score values (seq_score.nextval, 5, 147, 8,  20,   'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 8, 151, 9,  20,   'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 3, 155, 10, 19.2, 'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 7, 159, 6, 19.3, 'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 5, 194, 7, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 2, 195, 3, 20,   'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 4, 138, 8, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 8, 139, 5, 19,   'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 6, 217, 4, 20,   'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 7, 198, 6, 20,   'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 3, 197, 7, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 1, 193, 5, 20,   'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 4, 200, 9, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 2, 129, 10, 14.2, 'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 5, 213, 6, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 7, 167, 8, 20,   'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 6, 160, 8, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 4, 163, 3, 18.5, 'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 3, 193, 3, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 8, 178, 4, 20,   'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 1, 204, 5, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 6, 140, 10, 18.3, 'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 4, 125, 7, 13,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'Yes');
    insert into JB_Team_score values (seq_score.nextval, 3, 126, 1, 11.1, 'No', 'Yes',  'No', 'Yes', seq_game.currval, 'Yes');
    insert into JB_Team_score values (seq_score.nextval, 2, 174, 5, 20,   'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 7, 176, 4, 18,   'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 1, 182, 3, 20,   'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 8, 178, 6, 20,   'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 5, 167, 7, 20,   'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 6, 168, 7, 19.4, 'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 3, 143, 8, 20,   'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 2, 139, 8, 20,   'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 8, 118,10, 18.4, 'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 5, 87, 10, 18.5,  'No', 'Yes',  'Yes', 'No',seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 7, 205, 8, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 1, 207, 5, 19.4, 'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 8, 132, 6, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 3, 119, 10, 19.2, 'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 2, 219, 4, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 4, 164, 9, 20,   'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 1, 169, 5, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 5, 170, 2, 19.4, 'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 8, 151, 7, 20,   'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 6, 140, 6, 20,   'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');

    insert into JB_Team_score values (seq_score.nextval, 7, 175, 4, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 4, 176, 4, 19.1, 'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 1, 211, 4, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 2, 198, 5, 20,    'No', 'Yes',  'No', 'Yes',seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 7, 167, 7, 20,    'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 5, 153, 7, 20,    'No', 'Yes',  'No', 'Yes',seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 2, 151, 6, 12,  'Yes', 'No',  'Yes', 'No',seq_game.nextval, 'Yes');
    insert into JB_Team_score values (seq_score.nextval, 6, 146, 5, 12,    'No', 'Yes',  'No', 'Yes',seq_game.currval, 'Yes');
    insert into JB_Team_score values (seq_score.nextval, 1, 177, 5, 20,    'Yes', 'No',  'No', 'Yes',seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 4, 180, 4, 17.4,  'No',  'Yes', 'Yes','No',seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 3, 174, 6, 20,    'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 5, 176, 4, 19,    'No',  'Yes',  'No', 'Yes',seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 7, 127, 9, 20,   'Yes', 'No',   'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 1, 128, 4, 18,   'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 2, 163, 5, 20,   'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 8, 164, 3, 19.5, 'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 5, 181, 4, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 4, 168, 6, 20,   'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 6, 152, 9, 20,   'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 3, 155, 4, 18.4, 'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 8, 146,10, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 7, 141, 6, 20,   'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 6, 158, 8, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 3, 143, 7, 20,   'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 5, 210, 6, 20,   'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 4, 108,10, 18.1, 'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 2, 187, 5, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 8, 191, 1, 18.5,  'No','Yes',   'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 1, 176, 4, 20,   'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 6, 177, 6, 19.5, 'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 4, 245, 6, 20,   'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 3, 214, 8, 20,   'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 2, 181, 4, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 7, 187, 5, 19,   'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 8, 179, 4, 20,   'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 1, 180, 2, 19,   'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 5, 168, 6, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 6, 171, 3, 18,   'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 3, 88, 10, 15.1, 'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 7, 92, 0,  8.1,    'No', 'Yes',  'No', 'Yes',seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 6, 142,10, 19,   'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 4, 145, 4, 18,   'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 5, 186, 8, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 3, 183, 5, 20,   'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 7, 218, 6, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 8, 204, 3, 20,    'No', 'Yes',  'No', 'Yes',seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 2, 162, 5, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 1, 128, 6, 20,   'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 6, 164, 5, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 7, 134,10, 19.2, 'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 8, 172, 9, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 4, 173, 5, 19.4, 'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 2, 174, 4, 20,   'Yes', 'No',  'Yes', 'No', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 5, 163, 10, 19.3, 'No', 'Yes',  'No', 'Yes', seq_game.currval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 3, 153, 10, 19.4, 'Yes', 'No',  'No', 'Yes', seq_game.nextval, 'No');
    insert into JB_Team_score values (seq_score.nextval, 1, 159, 5, 19.1, 'No', 'Yes',  'Yes', 'No', seq_game.currval, 'No');


ALTER TABLE JB_Team_score
add match_type varchar2(10);

update JB_Team_score
set match_type='L';

SELECT * FROM JB_Team_score;

 insert into JB_Team_score values(seq_score.nextval, 8, 139, 7, 20, 'Yes', 'No',  '', '', seq_game.nextval, 'No','Q1');
 insert into JB_Team_score values(seq_score.nextval, 1, 140, 8,19.1, 'No', 'Yes',  '', '', seq_game.currval, 'No', 'Q1');
 insert into JB_Team_score values(seq_score.nextval, 4, 169, 7, 20, 'Yes', 'No',  '', '', seq_game.nextval, 'No', 'E1')	;
 insert into JB_Team_score values(seq_score.nextval, 6, 144, 4, 20, 'No', 'Yes',  '', '', seq_game.currval, 'No', 'E1')	;
 insert into JB_Team_score values(seq_score.nextval, 8, 174, 7, 20, 'Yes', 'No',  '', '', seq_game.nextval, 'No', 'Q2')	;
 insert into JB_Team_score values(seq_score.nextval, 4, 160, 9, 20, 'No', 'Yes',  '', '', seq_game.currval, 'No', 'Q2')	;
 insert into JB_Team_score values(seq_score.nextval, 1, 181, 2,18.3, 'Yes', 'No',  '', '', seq_game.nextval, 'No', 'F')	;
 insert into JB_Team_score values(seq_score.nextval, 8, 178, 6, 20, 'No', 'Yes',  '', '', seq_game.currval, 'No', 'F')	;







------------------------------------------------------------------------------------Function for Match_results-----------------------------------------------------------------------------------


    create or replace type team_obj_type
    as object
    (
      Match NUMBER(20),
      Batting_Team varchar2(30),
      Batting_team_short_form VARCHAR2(10),
      Batting_team_id NUMBER (10),
      bt_runs NUMBER(10),
      bt_wickets NUMBER(10),
      bt_overs number(3,1),
      Bowling_Team varchar2(30),
      Bowling_team_short_form VARCHAR2(10),
      bl_runs NUMBER(10),
      bl_wickets NUMBER(10),
      bl_overs number(3,1),
      Bowling_team_id NUMBER (10),
      Winner VARCHAR2(30),
      Winner_short_form VARCHAR2(10),
      Winner_team_id NUMBER(10),
      Final_winner varchar2(500),
      Dls_method varchar2(10),
      Bt_Match_type VARCHAR2(10),
      Bl_Match_type VARCHAR2(10)
        );

        create or replace type team_tbl_type
        is table of team_obj_type;

        drop type team_obj_type;
        drop type team_tbl_type;

        create or replace function JB_fn_findout_winner
        return team_tbl_type
        is
          team_details team_tbl_type := team_tbl_type();
             p_match NUMBER(20);
             pBatting_Team varchar2(30);
             pWinner VARCHAR2(30);
             p_winner_sf VARCHAR2(10);
             p_bt_sf VARCHAR2(10);
             p_bl_sf VARCHAR2(10);
             winner_team_id NUMBER (10);
             p_winner_team_id NUMBER (10);
             bt_teamid NUMBER(10);
             bl_teamid NUMBER(10);
             pBowling_Team varchar2(30);
             pFinal_winner varchar2(500);
             p_Winner VARCHAR2(30);
             Win varchar2 (500);
             won_by_dls NUMBER(10);
             Winner varchar2(50);
             Winner_sf VARCHAR2(10);
             Win_by_wicket number (10);
             win_w number(5);
             win_run number (5);
             Win_by_run number(10);
             p_dlsmethod varchar(10);
             p_match_type VARCHAR2(10);

            cursor cur
            is
            with ctable as(
            select  s.Team_id, Short_form,Score_id, Team_name, Game_id, Runs, Wickets_lost, Overs, Home, Away, Batting, Bowling,Interruption, Match_type
            from JB_Team_details d join JB_Team_score s
            on d.Team_id = s.Team_id
            ),
            ctable1 as(
            select s.Team_id AS bt_team_id, s.Score_id, s.Short_form AS bt_sf, s.Team_name as Batting_team, s.Runs as bt_runs, s.Wickets_lost as bt_wicket, s.Overs as bt_overs,s.Match_type AS bt_match_type,
            p.Short_form bl_sf, p.Team_id AS bl_team_id, p.Team_name as Bowling_team, p.Runs as bl_runs, p.Wickets_lost as bl_wicket, p.Overs as bl_overs, p.match_type AS bl_match_type,s.Interruption
            from
            ( select * from ctable where Batting like 'Yes%')s join (select * from ctable where Bowling like 'Yes%') p
            on s.Game_id = p.Game_id )
            select row_number() over (order by Score_id) as row_number, bt_team_id, bt_sf,Batting_team, bt_runs, bt_wicket, bt_overs, bt_match_type,bl_team_id, bl_sf,Bowling_team,
            bl_runs, bl_wicket, bl_overs, bl_match_type,Interruption
            from ctable1;
            Begin
                For ro in cur
                LOOP
                if (ro.bt_runs < ro.bl_runs) then

                Winner:=ro.Bowling_Team;
                Winner_sf:= ro.bl_sf;
                Winner_team_id:= ro.bl_team_id;
                Win_by_wicket := 1;
                win_w:= 10- ro.bl_wicket;
                won_by_dls:= 0;

                elsif (ro. row_number = 6 and ro.Interruption like 'Yes%') then
                Winner:= ro.Batting_Team;
                Winner_sf:= ro.bt_sf;
                Winner_team_id:=6;
                Win_by_wicket:= 0;
                win_run := 10;
                won_by_dls:= 1;


                elsif(ro. row_number = 18 and ro.Interruption like 'Yes%') then
                Winner:= ro.Bowling_Team;
                Winner_sf:= ro.bl_sf;
                Win_by_wicket:=1;
                Winner_team_id:=3;
                win_w:= 9;
                won_by_dls:= 1;


                elsif(ro. row_number = 32 and ro.Interruption like 'Yes%') then
                Winner:= ro.Batting_Team;
                Winner_sf:= ro.bt_sf;
                Winner_team_id:=2;
                Win_by_wicket:=0;
                win_run:= 4;
                won_by_dls:= 1;

                else
                    Winner:= ro.Batting_Team;
                    Winner_sf:= ro.bt_sf;
                    Winner_team_id:=ro.bt_team_id;
                    Win_by_wicket:=0;
                    win_run := ro.bt_runs-ro.bl_runs;
                    won_by_dls:= 0;


                    end if;

                IF(Win_by_wicket=1 AND won_by_dls=0) THEN
                Win:= Winner|| ' won by ' ||win_w||' wickets';

                ELSIF (Win_by_wicket=1 AND won_by_dls=1) then
                Win:= Winner|| ' won by ' ||win_w||' wickets' || ' (DLS Method)' ;

                ELSIF (Win_by_wicket=0 AND won_by_dls=1) then
                Win:= Winner|| ' won by ' || win_run ||' runs' || ' (DLS Method)';
                ELSIF (Win_by_wicket=0 AND won_by_dls=0) THEN
                Win:= Winner|| ' won by ' ||win_run||' runs';
                end if;

                team_details.extend;

               select ro.Row_Number, ro.Batting_team,  ro.bt_sf,ro.bt_team_id,ro.Bowling_team, ro.bl_sf, ro.bl_team_id,Winner, Winner_sf,Winner_team_id, Win,ro.Interruption
               into p_match,pBatting_Team,p_bt_sf,bt_teamid, pBowling_Team,p_bl_sf, bl_teamid, p_Winner, p_winner_sf,p_winner_team_id, pFinal_winner,p_dlsmethod from dual;

               team_details(team_details.last):= team_obj_type(p_match,pBatting_Team,p_bt_sf,bt_teamid, ro.bt_runs, ro.bt_wicket,ro.bt_overs,
               pBowling_Team,p_bl_sf, ro.bl_runs, ro.bl_wicket, ro.bl_overs, bl_teamid, p_Winner, p_winner_sf,p_winner_team_id, pFinal_winner,p_dlsmethod, ro.bt_match_type, ro.bl_match_type);


            end loop;
            return team_details;
            end;
                SELECT * FROM TABLE(JB_fn_findout_winner);


---------------------------------------------------------------------------------View For Match Results-------------------------------------------------------------------------------------------
           SELECT * FROM TABLE(JB_fn_findout_winner);

           CREATE OR REPLACE VIEW v_match_results AS
           SELECT Batting_team||Chr(10)|| '('|| bt_runs || '/' || bt_wickets ||') ' || bt_overs AS Team_A , ' V' AS Versus,
           Bowling_team ||Chr(10)|| '('|| bl_runs || '/' || bl_wickets ||') ' || bl_overs AS Team_B, final_winner  FROM TABLE(JB_fn_findout_winner)
           WHERE bt_match_type ='L' AND bl_match_type='L';

           SELECT * FROM v_match_results;


-----------------------------------------------------------------------------------View For League Table--------------------------------------------------------------------------------------------------------------------

             CREATE OR REPLACE VIEW v_league_table AS
             SELECT a.team,pld,w,l,0 AS t, 0 AS nr,pts,nrr AS NRR  FROM(
              SELECT Sum(gameplayed)AS pld,team FROM (
               SELECT Count(Bowling_team) AS gameplayed,Bowling_team AS team FROM TABLE(JB_fn_findout_winner)
               WHERE bt_match_type ='L' AND bl_match_type='L'
               GROUP BY  Bowling_team UNION ALL
                SELECT Count(Batting_team)AS gameplayed,Batting_team AS team FROM TABLE(JB_fn_findout_winner)
                 WHERE bt_match_type ='L' AND bl_match_type='L'
                GROUP BY  batting_team
                 ) GROUP BY team ) a
                                                          left join
                 (SELECT Count(winner) AS w, 14-Count(winner) AS l ,Count(winner)*2 AS pts,winner FROM TABLE(JB_fn_findout_winner)
                 WHERE bt_match_type ='L' AND bl_match_type='L'
                 GROUP BY winner) b
                   ON a.team= b.winner
                   left JOIN
                   (SELECT team_name AS team,short_form,JB_fn_getnpr(short_form) AS nrr  FROM jb_team_details
                   )c  ON a.team= c.team;

                   select * from v_league_table;


-----------------------------------------------------------------------------------------function to get nnr--------------------------------------------------------------------------------------------------------------------------------------

            create or replace function JB_fn_getnpr( team_name Varchar2)
            return varchar2
            is
            conceded_runs number(20);
            total_runs_scored number(20);
            Total_overs_bowled number(20);
            Total_overs_faced number(20);
            npr NUMBER (4,3);
            cursor cor is
            select * from  TABLE(JB_fn_findout_winner)
            WHERE (batting_team_short_form= 'CSK' OR  bowling_team_short_form='CSK' )
            AND  bt_match_type ='L'
            AND bl_match_type='L';

            BEGIN
            conceded_runs:=0;
            total_runs_scored:=0;
            Total_overs_bowled:=0;
            Total_overs_faced:=0;
            for r in cor
            LOOP
            if(r.Batting_team_short_form = team_name) THEN
              conceded_runs:= conceded_runs + r.bl_runs;
              total_runs_scored:= total_runs_scored + r.bt_runs;

            if(r.bl_wickets= 10 ) then
              Total_overs_bowled:=Total_overs_bowled + 20*6;
              else
              Total_overs_bowled:= Total_overs_bowled + (trunc(r.bl_overs) *6  + (r.bl_overs - FLOOR(r.bl_overs))*10);
              END IF;

           if(r.bt_wickets= 10) THEN
            Total_overs_faced:=Total_overs_faced + 20* 6;
            else
              Total_overs_faced:= Total_overs_faced + (trunc(r.bt_overs) *6  + (r.bt_overs - FLOOR(r.bt_overs))*10);
              end if;

            elsif(r.Bowling_team_short_form= team_name)then
              conceded_runs:= conceded_runs + r.bt_runs;
              total_runs_scored:= total_runs_scored + r.bl_runs;

           if(r.bt_wickets= 10) then
            Total_overs_bowled:=Total_overs_bowled + 20*6;
            else
            Total_overs_bowled:= Total_overs_bowled + (trunc(r.bt_overs) *6  + (r.bt_overs - FLOOR(r.bt_overs))*10);
            end if;

           if(r.bl_wickets= 10) then
            Total_overs_faced:=Total_overs_faced + 20* 6;
            else
              Total_overs_faced:= Total_overs_faced + (trunc(r.bl_overs) *6  + (r.bl_overs - FLOOR(r.bl_overs))*10);
              end IF;
              END IF;
            end loop;
              npr:= ((total_runs_scored/Total_overs_faced)- (conceded_runs/Total_overs_bowled))*6;
              return To_Char(npr,'0.999');
         END;


----------------------------------------------------------------------------Match Summary--------------------------------------------------------------------------------------------------


            CREATE OR REPLACE VIEW  V_Home_away  as
            with ctable as(
            select  s.Team_id, Short_form,Score_id, Team_name, Game_id, Runs, Wickets_lost, Overs, Home, Away, Batting, Bowling,Interruption
            from JB_Team_details d join JB_Team_score s
            on d.Team_id = s.Team_id
            WHERE  match_type ='L'

            ),
            ctable1 AS (
            select s.Team_id AS home_team_id, s.Score_id, s.Short_form AS home_sf, s.Team_name as Home_team, s.Runs as home_runs, s.Wickets_lost as home_wicket, s.Overs as home_overs,
            p.Short_form as away_sf, p.Team_id AS away_team_id, p.Team_name as Away_team, p.Runs as away_runs, p.Wickets_lost as away_wicket, p.Overs as away_overs, s.Interruption
            from
            ( select * from ctable where Home like 'Yes%')s join (select * from ctable where Away  like 'Yes%') p
            on s.Game_id = p.Game_id )
            select row_number() over (order by Score_id) as row_number, home_sf ,Home_team, away_sf,Away_team
            from ctable1;

            create OR replace view V_match_summary as
            SELECT * FROM
            (SELECT vt.Home_team AS Match_summary, vt.away_sf, f.Winner_short_form AS won FROM V_Home_away vt JOIN TABLE(JB_fn_findout_winner)f
            ON vt.row_number= f.match)
            pivot
            (Max (won) FOR (away_sf) IN ('CSK' AS CSK,'DD' AS DD, 'KXIP' AS KXIP, 'KKR' AS KKR, 'MI' AS MI, 'RR' AS RR, 'RCB' AS RCB,'SRH' AS SRH)  )
            ORDER by Match_summary ;

            select * from V_match_summary;


---------------------------------------------------------------------------Progression League Table--------------------------------------------------------------------------------------------------------------------------------------------




    create or replace type league_obj_type
    as object
    (

      Team_name VARCHAR2(30),
        id NUMBER(10),
      score NUMBER(10)


      );

    create or replace type league_tbl_type
        is table of league_obj_type;

        DROP TYPE   league_tbl_type;
        DROP TYPE   league_obj_type;

       create or replace function JB_fn_league_progression( team_name VARCHAR2)
            return league_tbl_type
            IS
            league_details league_tbl_type := league_tbl_type();
            flag NUMBER(5);
            team VARCHAR2(30);
           score NUMBER (10);
          CURSOR c IS
          SELECT Row_Number() OVER (ORDER BY match) AS Match,Batting_Team,batting_team_short_form,Batting_team_id, Bowling_Team, bowling_team_short_form,
          Bowling_team_id, Winner_team_id, Winner, winner_short_form FROM TABLE(JB_fn_findout_winner)
            WHERE (batting_team_short_form=team_name OR  bowling_team_short_form=team_name)
           AND  bt_match_type ='L'
           AND bl_match_type='L' ;

          BEGIN
          flag:=2;
          score:=0;
          FOR ro IN c
          LOOP
          IF(ro.batting_team_short_form = team_name) THEN
          team :=ro.Batting_Team;
          ELSIF(ro.bowling_team_short_form= team_name) THEN
          team :=ro.Bowling_Team;
           END IF;

          IF(ro.winner_short_form =team_name)then
          score:=score+flag;


          ELSE
          score:=score;
          END IF;


          league_details.extend;
          league_details(league_details.last):= league_obj_type(team,ro.Match,score);
          END LOOP;

          RETURN league_details;
          END;

          CREATE OR REPLACE VIEW league_part1 AS
          SELECT  * FROM TABLE (JB_fn_league_progression('CSK')) UNION ALL
          SELECT  * FROM TABLE (JB_fn_league_progression('DD')) UNION ALL
          SELECT  * FROM TABLE (JB_fn_league_progression('KXIP')) UNION ALL
          SELECT  * FROM TABLE (JB_fn_league_progression('KKR')) UNION ALL
          SELECT  * FROM TABLE (JB_fn_league_progression('MI')) UNION ALL
          SELECT  * FROM TABLE (JB_fn_league_progression('RR')) UNION ALL
          SELECT  * FROM TABLE (JB_fn_league_progression('RCB')) UNION ALL
          SELECT  * FROM TABLE (JB_fn_league_progression('SRH'))

          ` SELECT * FROM league_part1;

            CREATE OR REPLACE VIEW league_part2 as
            SELECT * FROM
            (SELECT team_name AS League_Progression,id,score FROM league_part1 )
            pivot
            (
             Max (score) FOR (id) IN (1,2,3,4,5,6,7,8,9,10,11,12,13,14)
             )
            ORDER by League_Progression ;

          CREATE OR REPLACE VIEW league_part3 AS
          SELECT  * FROM TABLE (fn_league_part3('CSK')) UNION ALL
          SELECT  * FROM TABLE (fn_league_part3('DD')) UNION ALL
          SELECT  * FROM TABLE (fn_league_part3('KXIP')) UNION ALL
          SELECT  * FROM TABLE (fn_league_part3('KKR')) UNION ALL
          SELECT  * FROM TABLE (fn_league_part3('MI')) UNION ALL
          SELECT  * FROM TABLE (fn_league_part3('RR')) UNION ALL
          SELECT  * FROM TABLE (fn_league_part3('RCB')) UNION ALL
          SELECT  * FROM TABLE (fn_league_part3('SRH'))

            SELECT * FROM  league_part2

            CREATE OR REPLACE VIEW league_final AS
            SELECT a.*,b.Q1E, b.Q2, b.F FROM league_part2 a left JOIN league_part3 b ON ( a.League_Progression= b.Team_name);

            SELECT * FROM league_final;



 ---------------------------------------------------------------------------------Function to get Playoff---------------------------------------------------------------------------------------------------------------------
    create or replace type league_tbl_type2
        is table of league_obj_type2;

       create or replace type league_obj_type2
      as object
       (
        Team_name VARCHAR2(90),
         Q1E varchar2(10),
        Q2 varchar2(10) ,
         F varchar2(10)
      );
       CREATE OR REPLACE FUNCTION fn_league_part3 (team_sf varchar2 )
       RETURN  league_tbl_type2
       IS
      league_details3 league_tbl_type2 := league_tbl_type2();
      Teamname VARCHAR2(90);
       p_Q1_E VARCHAR2(10);
       Q2 VARCHAR2 (10);
       F VARCHAR2(10);

       BEGIN
       p_Q1_E:=' ';
       Q2:=' ';
       F:= ' ';
       SELECT team_name INTO teamname FROM Jb_team_details WHERE Short_form =team_sf;
       FOR i IN (SELECT  * FROM TABLE(JB_fn_findout_winner) WHERE (bt_match_type ='Q1'OR bt_match_type='E1'))
       LOOP
       IF(i.batting_team_short_form =team_sf OR i.bowling_team_short_form=team_sf) THEN
       IF(team_sf=i.winner_short_form) THEN
        p_Q1_E:='W';
        ELSE
        p_Q1_E:='L';
        END IF;
        END IF ;
         END LOOP  ;

        FOR i IN (SELECT  * FROM TABLE(JB_fn_findout_winner) WHERE (bt_match_type ='Q2'))
       LOOP
       IF(i.batting_team_short_form =team_sf OR i.bowling_team_short_form=team_sf) THEN
       IF(team_sf=i.winner_short_form) THEN
        Q2:='W';
        ELSE
        Q2:='L';
        END IF;
        END IF ;
         END LOOP  ;

        FOR i IN (SELECT  * FROM TABLE(JB_fn_findout_winner) WHERE (bt_match_type ='F'))
       LOOP
       IF(i.batting_team_short_form =team_sf OR i.bowling_team_short_form=team_sf) THEN
       IF(team_sf=i.winner_short_form) THEN
        F:='W';
        ELSE
        F:='L';
        END IF;
        END IF ;
        END LOOP  ;
       league_details3.extend;
       league_details3(league_details3.last):=league_obj_type2(teamname, p_Q1_E, Q2, F);

       RETURN  league_details3;
       END;


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


   CREATE OR REPLACE VIEW Jb_v1 AS
   SELECT  qw, a FROM(
   SELECT 'Qualifier1'AS qw , NULL AS a FROM dual
   UNION ALL
   SELECT batting_team || Chr(10) || bowling_team AS Qualifier1, bt_runs  ||'/'||bt_wickets || '(' || bt_overs || ')'
    || Chr(10)|| bl_runs ||'/'||bl_wickets || '(' || bl_overs || ')' AS a   FROM TABLE (JB_fn_findout_winner)
    WHERE (bt_match_type='Q1' OR bl_match_type ='Q1')
    UNION all
    SELECT 'Eliminator', NULL AS qa FROM dual
    UNION ALL
    SELECT batting_team || Chr(10) || bowling_team AS Eliminator, bt_runs  ||'/'||bt_wickets || '(' || bt_overs || ')'
    || Chr(10)|| bl_runs ||'/'||bl_wickets || '(' || bl_overs || ')' AS a  FROM TABLE (JB_fn_findout_winner)
    WHERE (bt_match_type='E1' OR bl_match_type ='E1')

    UNION ALL

     SELECT batting_team || Chr(10) || bowling_team AS Q2, bt_runs  ||'/'||bt_wickets || '(' || bt_overs || ')'
    || Chr(10)|| bl_runs ||'/'||bl_wickets || '(' || bl_overs || ')' AS a  FROM TABLE (JB_fn_findout_winner)
    WHERE (bt_match_type='F' OR bl_match_type ='F'));

   SELECT * FROM Jb_v1;



    CREATE OR REPLACE VIEW jb_v2 AS
    SELECT  qw,  a FROM (
     SELECT 'Q-2' AS qw, NULL AS a FROM dual
     UNION ALL
     SELECT batting_team || Chr(10) || bowling_team AS Q2, bt_runs  ||'/'||bt_wickets || '(' || bt_overs || ')'
    || Chr(10)|| bl_runs ||'/'||bl_wickets || '(' || bl_overs || ')' AS a  FROM TABLE (JB_fn_findout_winner)
    WHERE (bt_match_type='Q2' OR bl_match_type ='Q2'));

     SELECT * FROM jb_v2;



   SELECT * FROM TABLE (JB_fn_findout_winner);






















