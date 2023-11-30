program hit_number.aleo;



function start_game:
    rem 42u32 100u32 into r0;
    add r0 1u32 into r1;
    output r1 as u32.private;


function guess_number:
    input r0 as u32.private;
    input r1 as u32.private;
    is.eq r0 r1 into r2;
    lt r0 r1 into r3;
    not r2 into r4;
    and r4 r3 into r5;
    ternary r5 -1i8 1i8 into r6;
    ternary r2 0i8 r6 into r7;
    output r7 as i8.private;
