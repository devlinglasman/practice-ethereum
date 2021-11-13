// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./utils/BowlingGameTest.sol";

contract TestBowlingGame is BowlingGameTest {

    function test_frame_not_finished_if_first_roll_less_than_ten() public {
        bowlingGame.roll(9);
        assertTrue(!bowlingGame.isFrameFinished());
    }

    function test_frame_finished_if_first_roll_ten() public {
        bowlingGame.roll(10);
        assertTrue(bowlingGame.isFrameFinished());
    }
}
