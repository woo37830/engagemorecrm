# frozen_string_literal: true

# Copyright (c) 2008-2013 Michael Dvorkin and contributors.
#
# Fat Free CRM is freely distributable under the terms of MIT license.
# See MIT-LICENSE file or http://www.opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
module FatFreeCRM
  module VERSION #:nodoc:
    MAJOR = 0
    MINOR = 20
    TINY  = 0
    PRE   = nil
    commit = `git rev-parse --short HEAD`
    thebranch = `git rev-parse --abbrev-ref HEAD`

    STRING= [MAJOR, MINOR, TINY, PRE].compact.join('.')
    GIT = [', Commit:', commit, '- Branch:', thebranch].compact.join(' ')
  end
end
