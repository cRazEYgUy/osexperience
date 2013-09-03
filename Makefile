

THEOS_BUILD_DIR = debs

include theos/makefiles/common.mk

TWEAK_NAME = OSExperience
OSExperience_FILES = Hooks.xm OSWallpaperView.m OSViewController.m OSPane.m OSDesktopPane.m OSSlider.m explorer/OSFile.m explorer/OSFileView.m explorer/OSFileGridView.m UIView+FrameExtensions.m OSAppPane.m OSTouchForwarder.m launchpad/OSIconContentView.m launchpad/UIImage+StackBlur.m missioncontrol/OSThumbnailView.m missioncontrol/OSThumbnailWrapper.m missioncontrol/OSPaneThumbnail.m OSPaneModel.m missioncontrol/OSThumbnailPlaceholder.m OSPinchGestureRecognizer.m explorer/CGPointExtension.c OSWindow.m OSAppWindow.m
OSExperience_FRAMEWORKS = UIKit QuartzCore CoreGraphics
OSExperience_PRIVATE_FRAMEWORKS = AppSupport GraphicsServices BackBoardServices

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	$(ECHO_NOTHING)install.exec "killall -9 backboardd"$(ECHO_END)
