.class Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
.super Landroid/content/pm/PermissionGroupInfo;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyPermissionGroupInfo"
.end annotation


# instance fields
.field final mAllPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mDevicePermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLabel:Ljava/lang/CharSequence;

.field final mNewPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mPersonalPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/pm/PermissionGroupInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/PermissionGroupInfo;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mPersonalPermissions:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mDevicePermissions:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    .line 106
    return-void
.end method

.method constructor <init>(Landroid/content/pm/PermissionInfo;)V
    .locals 1
    .param p1, "perm"    # Landroid/content/pm/PermissionInfo;

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/content/pm/PermissionGroupInfo;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mPersonalPermissions:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mDevicePermissions:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    .line 100
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->name:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method public loadGroupIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 109
    iget v1, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 119
    :goto_0
    return-object v1

    .line 114
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 115
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 116
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 119
    const/4 v1, 0x0

    goto :goto_0
.end method
