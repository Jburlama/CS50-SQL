CREATE INDEX "courses_index" ON "courses" ("semester", "title");
CREATE INDEX "enrollments_index" ON "enrollments" ("course_id", "student_id");
CREATE INDEX "satisfies_index" ON "satisfies" ("course_id");
