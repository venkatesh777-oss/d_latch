//testbench code

module d_latch_tb;

    reg D, En;     // Inputs
    wire Q;        // Output

    // Instantiate the Device Under Test (DUT)
    d_latch DUT (
        .D(D),
        .En(En),
        .Q(Q)
    );

    initial begin
        // Initialize signals
        D = 0; En = 0;
        #10;

        // Case 1: Enable=1 → Q follows D
        En = 1; D = 0; #10;
        D = 1; #10;

        // Case 2: Disable latch (hold state)
        En = 0; D = 0; #10;
        D = 1; #10;

        // Case 3: Enable again (update Q)
        En = 1; D = 0; #10;
        D = 1; #10;

        $stop; // End simulation
    end
