```vhdl
entity counter is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           count : out  INTEGER range 0 to 15 );
end entity;

architecture behavioral of counter is
    signal internal_count : INTEGER range 0 to 15 := 0;
    signal sync_rst : STD_LOGIC := '0'; -- Synchronized reset
begin
    process (clk)
    begin
        if rising_edge(clk) then
            sync_rst <= rst; -- Synchronize the reset signal
        end if;
    end process;

    process (clk, sync_rst)
    begin
        if sync_rst = '1' then
            internal_count <= 0;
        elsif rising_edge(clk) then
            if internal_count = 15 then
                internal_count <= 0;
            else
                internal_count <= internal_count + 1;
            end if;
        end if;
    end process;

    count <= internal_count;
end architecture;
```