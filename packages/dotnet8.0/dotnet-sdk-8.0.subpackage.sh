TERMUX_SUBPKG_DESCRIPTION=".NET 8.0 SDK"
TERMUX_SUBPKG_DEPEND_ON_PARENT=false
TERMUX_SUBPKG_DEPENDS="aspnetcore-runtime-8.0, aspnetcore-targeting-pack-8.0, dotnet-apphost-pack-8.0, dotnet-runtime-8.0, dotnet-targeting-pack-8.0, dotnet-templates-8.0, netstandard-targeting-pack-2.1"
TERMUX_SUBPKG_INCLUDE=$(cat "${TERMUX_PKG_TMPDIR}"/dotnet-sdk.txt)

termux_step_create_subpkg_debscripts() {
	cat <<- EOF > ./postinst
	#!${TERMUX_PREFIX}/bin/sh
	cat <<- EOL

	====================
	NET SDK known issues
	====================

	'export MSBuildDebugEngine=1'
	variable to capture more build logs.

	Pass '-v n' or '-v d' or '-v diag' to increase
	log verbosity.

	Initial build only offers Mono runtime.
	Check logcat for runtime errors.
	CoreCLR is still WIP.

	EOL
	EOF
}
