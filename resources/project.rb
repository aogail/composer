#
# Cookbook Name:: composer
# Resource:: project
#
# Copyright 2012-2014, Escape Studios
#

actions :install, :update, :dump_autoload, :create_project
default_action :install

attribute :package_name, :kind_of => String
attribute :user, :kind_of => String, :default => 'root'
attribute :group, :kind_of => String, :default => 'root'
attribute :project_dir, :kind_of => String, :name_attribute => true
attribute :dev, :kind_of => [TrueClass, FalseClass], :default => false
attribute :quiet, :kind_of => [TrueClass, FalseClass], :default => true
attribute :optimize_autoloader, :kind_of => [TrueClass, FalseClass], :default => false
attribute :version, :kind_of => String

def initialize(*args)
  super
  @action = :install
end
