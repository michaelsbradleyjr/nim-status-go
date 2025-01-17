type SignalCallback* = proc(signal: cstring): void {.cdecl.}

# All procs start with lowercase because the compiler will also need to import
# status-go, and it will complain of duplication of function names

proc hashMessage*(message: cstring): cstring {.importc: "HashMessage".}

proc initKeystore*(keydir: cstring): cstring {.importc: "InitKeystore".}

proc openAccounts*(datadir: cstring): cstring {.importc: "OpenAccounts".}

proc multiAccountGenerateAndDeriveAddresses*(paramsJSON: cstring): cstring {.importc: "MultiAccountGenerateAndDeriveAddresses".}

proc multiAccountStoreDerivedAccounts*(paramsJSON: cstring): cstring {.importc: "MultiAccountStoreDerivedAccounts".}

proc multiAccountImportMnemonic*(paramsJSON: cstring): cstring {.importc: "MultiAccountImportMnemonic".}

proc createAccountFromMnemonicAndDeriveAccountsForPaths*(paramsJSON: cstring): cstring {.importc: "CreateAccountFromMnemonicAndDeriveAccountsForPaths".}

proc multiAccountImportPrivateKey*(paramsJSON: cstring): cstring {.importc: "MultiAccountImportPrivateKey".}

proc multiAccountDeriveAddresses*(paramsJSON: cstring): cstring {.importc: "MultiAccountDeriveAddresses".}

proc saveAccountAndLogin*(accountData: cstring, password: cstring, settingsJSON: cstring, configJSON: cstring, subaccountData: cstring): cstring {.importc: "SaveAccountAndLogin".}

proc deleteMultiAccount*(keyUID: cstring, keyStoreDir: cstring): cstring {.importc: "DeleteMultiaccount".}

proc callRPC*(inputJSON: cstring): cstring {.importc: "CallRPC".}

proc callPrivateRPC*(inputJSON: cstring): cstring {.importc: "CallPrivateRPC".}

proc addPeer*(peer: cstring): cstring {.importc: "AddPeer".}

proc setSignalEventCallback*(callback: SignalCallback) {.importc: "SetSignalEventCallback".}

proc sendTransaction*(jsonArgs: cstring, password: cstring): cstring {.importc: "SendTransaction".}

proc sendTransactionWithChainId*(chainId: cint, jsonArgs: cstring, password: cstring): cstring {.importc: "SendTransactionWithChainID".}

proc generateAlias*(pk: cstring): cstring {.importc: "GenerateAlias".}

proc isAlias*(value: cstring): cstring {.importc: "IsAlias".}

proc identicon*(pk: cstring): cstring {.importc: "Identicon".}

proc emojiHash*(pk: cstring): cstring {.importc: "EmojiHash".}

proc colorHash*(pk: cstring): cstring {.importc: "ColorHash".}

proc colorID*(pk: cstring): cstring {.importc: "ColorID".}

proc login*(accountData: cstring, password: cstring): cstring {.importc: "Login".}

proc loginWithConfig*(accountData: cstring, password: cstring, configJSON: cstring): cstring {.importc: "LoginWithConfig".}

proc logout*(): cstring {.importc: "Logout".}

proc verifyAccountPassword*(keyStoreDir: cstring, address: cstring, password: cstring): cstring {.importc: "VerifyAccountPassword".}

proc changeDatabasePassword*(keyUID: cstring, password: cstring, newPassword: cstring): cstring {.importc: "ChangeDatabasePassword".}

proc validateMnemonic*(mnemonic: cstring): cstring {.importc: "ValidateMnemonic".}

proc saveAccountAndLoginWithKeycard*(accountData: cstring, password: cstring, settingsJSON: cstring, configJSON: cstring, subaccountData: cstring, keyHex: cstring): cstring {.importc: "SaveAccountAndLoginWithKeycard".}

proc hashTransaction*(txArgsJSON: cstring): cstring {.importc: "HashTransaction".}

proc extractGroupMembershipSignatures*(signaturePairsStr: cstring): cstring {.importc: "ExtractGroupMembershipSignatures".}

proc connectionChange*(typ: cstring, expensive: cstring) {.importc: "ConnectionChange".}

proc multiformatSerializePublicKey*(key: cstring, outBase: cstring): cstring {.importc: "MultiformatSerializePublicKey".}

proc multiformatDeserializePublicKey*(key: cstring, outBase: cstring): cstring {.importc: "MultiformatDeserializePublicKey".}

proc decompressPublicKey*(key: cstring): cstring {.importc: "DecompressPublicKey".}

proc compressPublicKey*(key: cstring): cstring {.importc: "CompressPublicKey".}

proc validateNodeConfig*(configJSON: cstring): cstring {.importc: "ValidateNodeConfig".}

proc loginWithKeycard*(accountData: cstring, password: cstring, keyHex: cstring): cstring {.importc: "LoginWithKeycard".}

func convertToKeycardAccount*(keyStoreDir: cstring, accountData: cstring, settingsJSON: cstring, password: cstring, newPassword: cstring): cstring {.importc: "ConvertToKeycardAccount".}

proc recover*(rpcParams: cstring): cstring {.importc: "Recover".}

proc writeHeapProfile*(dataDir: cstring): cstring {.importc: "WriteHeapProfile".}

proc hashTypedData*(data: cstring): cstring {.importc: "HashTypedData".}

proc resetChainData*(): cstring {.importc: "ResetChainData".}

proc signMessage*(rpcParams: cstring): cstring {.importc: "SignMessage".}

proc signTypedData*(data: cstring, address: cstring, password: cstring): cstring {.importc: "SignTypedData".}

proc stopCPUProfiling*(): cstring {.importc: "StopCPUProfiling".}

proc getNodesFromContract*(rpcEndpoint: cstring, contractAddress: cstring): cstring {.importc: "GetNodesFromContract".}

proc exportNodeLogs*(): cstring {.importc: "ExportNodeLogs".}

proc chaosModeUpdate*(on: cint): cstring {.importc: "ChaosModeUpdate".}

proc signHash*(hexEncodedHash: cstring): cstring {.importc: "SignHash".}

proc sendTransactionWithSignature*(txtArgsJSON: cstring, sigString: cstring): cstring {.importc: "SendTransactionWithSignature".}

proc startCPUProfile*(dataDir: cstring): cstring {.importc: "StartCPUProfile".}

proc appStateChange*(state: cstring) {.importc: "AppStateChange".}

proc signGroupMembership*(content: cstring): cstring {.importc: "SignGroupMembership".}

proc multiAccountStoreAccount*(paramsJSON: cstring): cstring {.importc: "MultiAccountStoreAccount".}

proc multiAccountLoadAccount*(paramsJSON: cstring): cstring {.importc: "MultiAccountLoadAccount".}

proc multiAccountGenerate*(paramsJSON: cstring): cstring {.importc: "MultiAccountGenerate".}

proc multiAccountReset*(): cstring {.importc: "MultiAccountReset".}

proc migrateKeyStoreDir*(accountData: cstring, password: cstring, oldKeystoreDir: cstring, multiaccountKeystoreDir: cstring): cstring {.importc: "MigrateKeyStoreDir".}

proc startWallet*(watchNewBlocks: bool): cstring {.importc: "StartWallet".}

proc stopWallet*(): cstring {.importc: "StopWallet".}

proc startLocalNotifications*(): cstring {.importc: "StartLocalNotifications".}

proc stopLocalNotifications*(): cstring {.importc: "StopLocalNotifications".}

proc getNodeConfig*(): cstring {.importc: "GetNodeConfig".}

proc free*(param: pointer) {.importc: "Free".}

proc imageServerTLSCert*(): cstring {.importc: "ImageServerTLSCert".}

proc getPasswordStrength*(paramsJSON: cstring): cstring {.importc: "GetPasswordStrength".}

proc getPasswordStrengthScore*(paramsJSON: cstring): cstring {.importc: "GetPasswordStrengthScore".}

proc switchFleet*(newFleet: cstring, configJSON: cstring): cstring{.importc: "SwitchFleet".}

proc generateImages*(imagePath: cstring, aX: cint, aY: cint, bX: cint, bY: cint): cstring {.importc: "GenerateImages".}