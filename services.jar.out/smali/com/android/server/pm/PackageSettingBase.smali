.class Lcom/android/server/pm/PackageSettingBase;
.super Lcom/android/server/pm/GrantedPermissions;
.source "PackageSettingBase.java"


# static fields
.field private static final DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

.field static final PKG_INSTALL_COMPLETE:I = 0x1

.field static final PKG_INSTALL_INCOMPLETE:I


# instance fields
.field codePath:Ljava/io/File;

.field codePathString:Ljava/lang/String;

.field cpuAbiOverrideString:Ljava/lang/String;

.field firstInstallTime:J

.field haveGids:Z

.field installStatus:I

.field installerPackageName:Ljava/lang/String;

.field keySetData:Lcom/android/server/pm/PackageKeySetData;

.field lastUpdateTime:J

.field legacyNativeLibraryPathString:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final name:Ljava/lang/String;

.field origPackage:Lcom/android/server/pm/PackageSettingBase;

.field permissionsFixed:Z

.field primaryCpuAbiString:Ljava/lang/String;

.field final realName:Ljava/lang/String;

.field resourcePath:Ljava/io/File;

.field resourcePathString:Ljava/lang/String;

.field secondaryCpuAbiString:Ljava/lang/String;

.field signatures:Lcom/android/server/pm/PackageSignatures;

.field timeStamp:J

.field uidError:Z

.field private final userState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/PackageUserState;",
            ">;"
        }
    .end annotation
.end field

.field versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Landroid/content/pm/PackageUserState;

    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 5
    .param p1, "base"    # Lcom/android/server/pm/PackageSettingBase;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/pm/GrantedPermissions;-><init>(Lcom/android/server/pm/GrantedPermissions;)V

    .line 98
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 103
    new-instance v1, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v1}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 109
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    .line 111
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 147
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 148
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 149
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 150
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 151
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 152
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 153
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 154
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 155
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 156
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 157
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 158
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 159
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 160
    iget v1, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    .line 162
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 164
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 166
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    .line 167
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    .line 168
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    new-instance v4, Landroid/content/pm/PackageUserState;

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageUserState;

    invoke-direct {v4, v1}, Landroid/content/pm/PackageUserState;-><init>(Landroid/content/pm/PackageUserState;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    iget v1, p1, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 175
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    .line 177
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 179
    new-instance v1, Lcom/android/server/pm/PackageKeySetData;

    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageKeySetData;-><init>(Lcom/android/server/pm/PackageKeySetData;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 181
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p6, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p8, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p9, "pVersionCode"    # I
    .param p10, "pkgFlags"    # I

    .prologue
    .line 121
    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/android/server/pm/GrantedPermissions;-><init>(I)V

    .line 98
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 103
    new-instance v1, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v1}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 109
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    .line 111
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 122
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    .line 124
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/PackageSettingBase;->init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p6, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p8, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p9, "pVersionCode"    # I
    .param p10, "pkgFlags"    # I
    .param p11, "flagsEx"    # I

    .prologue
    .line 133
    move/from16 v0, p10

    move/from16 v1, p11

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/GrantedPermissions;-><init>(II)V

    .line 98
    new-instance v2, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v2}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 103
    new-instance v2, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v2}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 109
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    .line 111
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 134
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 136
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/PackageSettingBase;->init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    return-void
.end method

.method private modifyUserState(I)Landroid/content/pm/PackageUserState;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageUserState;

    .line 243
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-nez v0, :cond_0

    .line 244
    new-instance v0, Landroid/content/pm/PackageUserState;

    .end local v0    # "state":Landroid/content/pm/PackageUserState;
    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    .line 245
    .restart local v0    # "state":Landroid/content/pm/PackageUserState;
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    :cond_0
    return-object v0
.end method


# virtual methods
.method addDisabledComponent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 393
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 394
    return-void
.end method

.method addEnabledComponent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 397
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 398
    return-void
.end method

.method public copyFrom(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 4
    .param p1, "base"    # Lcom/android/server/pm/PackageSettingBase;

    .prologue
    .line 221
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->grantedPermissions:Landroid/util/ArraySet;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->grantedPermissions:Landroid/util/ArraySet;

    .line 222
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->gids:[I

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->gids:[I

    .line 224
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 225
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 226
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 227
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 228
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 229
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 230
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 231
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    .line 232
    iget-boolean v1, p1, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    iput-boolean v1, p0, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    .line 233
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    iget v1, p1, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 238
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 239
    return-void
.end method

.method disableComponentLPw(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 409
    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2, v0}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 410
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 412
    .local v0, "changed":Z
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 413
    return v0
.end method

.method enableComponentLPw(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 401
    const/4 v2, 0x1

    invoke-virtual {p0, p2, v0, v2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 402
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 404
    .local v0, "changed":Z
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 405
    return v0
.end method

.method getBlockUninstall(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    return v0
.end method

.method getCurrentEnabledStateLPr(Ljava/lang/String;I)I
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 426
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 427
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    const/4 v1, 0x1

    .line 433
    :goto_0
    return v1

    .line 429
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    const/4 v1, 0x2

    goto :goto_0

    .line 433
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getDisabledComponents(I)Landroid/util/ArraySet;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method getEnabled(I)I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageUserState;->enabled:I

    return v0
.end method

.method getEnabledComponents(I)Landroid/util/ArraySet;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method getHidden(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    return v0
.end method

.method public getInstallStatus()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    return v0
.end method

.method getInstalled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->installed:Z

    return v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getLastDisabledAppCaller(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    return-object v0
.end method

.method getNotLaunched(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    return v0
.end method

.method getStopped(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    return v0
.end method

.method init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "codePath"    # Ljava/io/File;
    .param p2, "resourcePath"    # Ljava/io/File;
    .param p3, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p4, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p5, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p6, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p7, "pVersionCode"    # I

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 187
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 188
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 189
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 190
    iput-object p3, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 191
    iput-object p4, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 192
    iput-object p5, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 193
    iput-object p6, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 194
    iput p7, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    .line 195
    return-void
.end method

.method isAnyInstalled([I)Z
    .locals 5
    .param p1, "users"    # [I

    .prologue
    .line 281
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 282
    .local v3, "user":I
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    iget-boolean v4, v4, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v4, :cond_0

    .line 283
    const/4 v4, 0x1

    .line 286
    .end local v3    # "user":I
    :goto_1
    return v4

    .line 281
    .restart local v3    # "user":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v3    # "user":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z
    .param p3, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    .line 382
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 383
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-eqz p2, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-nez v1, :cond_0

    .line 384
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 386
    :cond_0
    if-eqz p3, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-nez v1, :cond_1

    .line 387
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 389
    :cond_1
    return-object v0
.end method

.method queryInstalledUsers([IZ)[I
    .locals 7
    .param p1, "users"    # [I
    .param p2, "installed"    # Z

    .prologue
    .line 290
    const/4 v3, 0x0

    .line 291
    .local v3, "num":I
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v5, v0, v1

    .line 292
    .local v5, "user":I
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    move-result v6

    if-ne v6, p2, :cond_0

    .line 293
    add-int/lit8 v3, v3, 0x1

    .line 291
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v5    # "user":I
    :cond_1
    new-array v4, v3, [I

    .line 297
    .local v4, "res":[I
    const/4 v3, 0x0

    .line 298
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget v5, v0, v1

    .line 299
    .restart local v5    # "user":I
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    move-result v6

    if-ne v6, p2, :cond_2

    .line 300
    aput v5, v4, v3

    .line 301
    add-int/lit8 v3, v3, 0x1

    .line 298
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 304
    .end local v5    # "user":I
    :cond_3
    return-object v4
.end method

.method public readUserState(I)Landroid/content/pm/PackageUserState;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageUserState;

    .line 252
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-eqz v0, :cond_0

    .line 255
    .end local v0    # "state":Landroid/content/pm/PackageUserState;
    :goto_0
    return-object v0

    .restart local v0    # "state":Landroid/content/pm/PackageUserState;
    :cond_0
    sget-object v0, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    goto :goto_0
.end method

.method removeUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 439
    return-void
.end method

.method restoreComponentLPw(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "componentClassName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 417
    invoke-virtual {p0, p2, v3, v3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 418
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v3, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 420
    .local v0, "changed":Z
    :goto_0
    iget-object v3, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v3, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    or-int/2addr v0, v2

    .line 422
    return v0

    .end local v0    # "changed":Z
    :cond_1
    move v0, v2

    .line 418
    goto :goto_0
.end method

.method setBlockUninstall(ZI)V
    .locals 1
    .param p1, "blockUninstall"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 336
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    .line 337
    return-void
.end method

.method setDisabledComponents(Landroid/util/ArraySet;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-object p1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 369
    return-void
.end method

.method setDisabledComponentsCopy(Landroid/util/ArraySet;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    :goto_0
    iput-object v0, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 379
    return-void

    .line 377
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setEnabled(IILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 260
    .local v0, "st":Landroid/content/pm/PackageUserState;
    iput p1, v0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 261
    iput-object p3, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 262
    return-void
.end method

.method setEnabledComponents(Landroid/util/ArraySet;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-object p1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 365
    return-void
.end method

.method setEnabledComponentsCopy(Landroid/util/ArraySet;I)V
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    :goto_0
    iput-object v0, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 374
    return-void

    .line 372
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setHidden(ZI)V
    .locals 1
    .param p1, "hidden"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 328
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 329
    return-void
.end method

.method public setInstallStatus(I)V
    .locals 0
    .param p1, "newStatus"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 207
    return-void
.end method

.method setInstalled(ZI)V
    .locals 1
    .param p1, "inst"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 273
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 274
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 199
    return-void
.end method

.method setNotLaunched(ZI)V
    .locals 1
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 320
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 321
    return-void
.end method

.method setStopped(ZI)V
    .locals 1
    .param p1, "stop"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 312
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 313
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "newStamp"    # J

    .prologue
    .line 214
    iput-wide p1, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 215
    return-void
.end method

.method setUserState(IIZZZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;Z)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "enabled"    # I
    .param p3, "installed"    # Z
    .param p4, "stopped"    # Z
    .param p5, "notLaunched"    # Z
    .param p6, "hidden"    # Z
    .param p7, "lastDisableAppCaller"    # Ljava/lang/String;
    .param p10, "blockUninstall"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZZZ",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p8, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p9, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 344
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iput p2, v0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 345
    iput-boolean p3, v0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 346
    iput-boolean p4, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 347
    iput-boolean p5, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 348
    iput-boolean p6, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 349
    iput-object p7, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 350
    iput-object p8, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 351
    iput-object p9, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 352
    iput-boolean p10, v0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    .line 353
    return-void
.end method
