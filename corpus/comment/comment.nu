=====
comment-001-single
=====

# comment

-----

(nu_script
  (comment))

=====
comment-002-before-command
=====

# comment
echo hello

-----

(nu_script
  (comment)
  (pipeline
    (pipe_element
      (command
        (cmd_identifier)
        (val_string)))))

=====
comment-003-empty-before-command
=====

#
echo hello

-----

(nu_script
  (comment)
  (pipeline
    (pipe_element
      (command
        (cmd_identifier)
        (val_string)))))

=====
comment-003-end-of-line
=====

echo hello # comment

-----

(nu_script
  (pipeline
    (pipe_element
      (command
        (cmd_identifier)
        (val_string)))
    (comment)))

=====
comment-003-empty-end-of-line
=====

echo hello #

-----

(nu_script
  (pipeline
    (pipe_element
      (command
        (cmd_identifier)
        (val_string)))
    (comment)))

=====
comment-003-empty-end-of-line-before-command
=====

echo hello #
echo world

-----

(nu_script
  (pipeline
    (pipe_element
      (command
        (cmd_identifier)
        (val_string)))
    (comment))
  (pipeline
    (pipe_element
      (command
        (cmd_identifier)
        (val_string)))))
