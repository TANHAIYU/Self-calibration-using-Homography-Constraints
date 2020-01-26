#include "UserInterfaceInfo.h"

namespace planecalib {

std::unique_ptr<UserInterfaceInfo> UserInterfaceInfo::gInstance;

UserInterfaceInfo &UserInterfaceInfo::Instance()
{
	if(gInstance.get() == NULL)
		gInstance.reset(new UserInterfaceInfo());
	return *gInstance;
}

UserInterfaceInfo::UserInterfaceInfo()
{
	memset(mKeyState, 0, sizeof(mKeyState));
	memset(mSpecialKeyState, 0, sizeof(mSpecialKeyState));
}

} /* namespace planecalib */
