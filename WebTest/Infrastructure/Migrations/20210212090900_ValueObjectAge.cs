using Microsoft.EntityFrameworkCore.Migrations;

namespace Infrastructure.Migrations
{
    public partial class ValueObjectAge : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Age",
                table: "Persons");

            migrationBuilder.AddColumn<int>(
                name: "AgePerson_Value",
                table: "Persons",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "AgePerson_Value",
                table: "Persons");

            migrationBuilder.AddColumn<int>(
                name: "Age",
                table: "Persons",
                type: "int",
                maxLength: 15,
                nullable: false,
                defaultValue: 0);
        }
    }
}
