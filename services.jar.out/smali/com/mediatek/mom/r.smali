.class Lcom/mediatek/mom/r;
.super Lcom/mediatek/mom/MultiUserControllerBase;
.source "SourceFile"

# interfaces
.implements Lcom/mediatek/mom/IPermissionController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mom/r$1;,
        Lcom/mediatek/mom/r$a;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static c:Lcom/mediatek/mom/ControllerBase;


# instance fields
.field private J:Lcom/mediatek/mom/p;

.field private ac:Landroid/app/IActivityManager;

.field private ad:Landroid/content/pm/IPackageManager;

.field private ae:Landroid/os/IUserManager;

.field private af:Lcom/mediatek/mom/u;

.field private ag:Lcom/mediatek/mom/s;

.field private ah:Lcom/mediatek/mom/j;

.field private ai:Z

.field aj:Landroid/content/IntentFilter;

.field private ak:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mom/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private al:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/mom/r;->DEBUG:Z

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mom/r;->c:Lcom/mediatek/mom/ControllerBase;

    return-void
.end method

.method private constructor <init>(Lcom/mediatek/mom/p;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Lcom/mediatek/mom/MultiUserControllerBase;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/mediatek/mom/r;->ac:Landroid/app/IActivityManager;

    .line 85
    iput-object v0, p0, Lcom/mediatek/mom/r;->ad:Landroid/content/pm/IPackageManager;

    .line 86
    iput-object v0, p0, Lcom/mediatek/mom/r;->ae:Landroid/os/IUserManager;

    .line 87
    iput-object v0, p0, Lcom/mediatek/mom/r;->mContext:Landroid/content/Context;

    .line 88
    iput-object v0, p0, Lcom/mediatek/mom/r;->af:Lcom/mediatek/mom/u;

    .line 89
    iput-object v0, p0, Lcom/mediatek/mom/r;->ag:Lcom/mediatek/mom/s;

    .line 90
    iput-object v0, p0, Lcom/mediatek/mom/r;->ah:Lcom/mediatek/mom/j;

    .line 92
    iput-boolean v1, p0, Lcom/mediatek/mom/r;->ai:Z

    .line 93
    iput-boolean v1, p0, Lcom/mediatek/mom/r;->b:Z

    .line 94
    iput-object v0, p0, Lcom/mediatek/mom/r;->J:Lcom/mediatek/mom/p;

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/r;->aj:Landroid/content/IntentFilter;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/r;->ak:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/r;->al:Ljava/util/Map;

    .line 105
    invoke-static {}, Lcom/mediatek/mom/u;->z()Lcom/mediatek/mom/u;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/r;->af:Lcom/mediatek/mom/u;

    .line 106
    invoke-static {}, Lcom/mediatek/mom/s;->x()Lcom/mediatek/mom/s;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/r;->ag:Lcom/mediatek/mom/s;

    .line 107
    invoke-static {}, Lcom/mediatek/mom/j;->f()Lcom/mediatek/mom/j;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/r;->ah:Lcom/mediatek/mom/j;

    .line 108
    invoke-static {}, Lcom/mediatek/mom/r;->getPackageManagerService()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/r;->ad:Landroid/content/pm/IPackageManager;

    .line 109
    invoke-static {}, Lcom/mediatek/mom/r;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/r;->ac:Landroid/app/IActivityManager;

    .line 110
    invoke-static {}, Lcom/mediatek/mom/r;->getUserManagerService()Landroid/os/IUserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/r;->ae:Landroid/os/IUserManager;

    .line 111
    iput-object p1, p0, Lcom/mediatek/mom/r;->J:Lcom/mediatek/mom/p;

    .line 114
    invoke-direct {p0}, Lcom/mediatek/mom/r;->v()V

    .line 115
    return-void
.end method

.method public static B(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 858
    .line 859
    packed-switch p0, :pswitch_data_0

    .line 867
    const-string v0, "UNKNOWN"

    .line 868
    const-string v1, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapResult2String() with unknown result code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :goto_0
    return-object v0

    .line 861
    :pswitch_0
    const-string v0, "GRANTED"

    goto :goto_0

    .line 864
    :pswitch_1
    const-string v0, "DENIED"

    goto :goto_0

    .line 859
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static C(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 875
    .line 876
    packed-switch p0, :pswitch_data_0

    .line 887
    const-string v0, "UNKNOWN"

    .line 888
    const-string v1, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapResult2String() with unknown status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :goto_0
    return-object v0

    .line 878
    :pswitch_0
    const-string v0, "GRANTED"

    goto :goto_0

    .line 881
    :pswitch_1
    const-string v0, "DENIED"

    goto :goto_0

    .line 884
    :pswitch_2
    const-string v0, "CHECKING"

    goto :goto_0

    .line 876
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x2

    const/4 v7, 0x0

    .line 705
    .line 706
    iget-object v0, p0, Lcom/mediatek/mom/r;->af:Lcom/mediatek/mom/u;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v2, p1, p3}, Lcom/mediatek/mom/u;->d(ILjava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;

    move-result-object v3

    .line 707
    new-instance v2, Lcom/mediatek/common/mom/PermissionRecord;

    invoke-direct {v2, p1, p3, v7}, Lcom/mediatek/common/mom/PermissionRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 709
    if-eqz v3, :cond_3

    .line 710
    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v0

    .line 712
    iget-object v4, p0, Lcom/mediatek/mom/r;->af:Lcom/mediatek/mom/u;

    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/mom/u;->E(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 713
    invoke-virtual {v3, v1}, Lcom/mediatek/common/mom/Permission;->setStatus(I)V

    move v0, v1

    .line 718
    :cond_0
    invoke-virtual {v2, v0}, Lcom/mediatek/common/mom/PermissionRecord;->setStatus(I)V

    .line 720
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPermission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/mediatek/mom/r;->C(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, p3, v4}, Lcom/mediatek/mom/r;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 723
    packed-switch v0, :pswitch_data_0

    .line 753
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v0, v7

    .line 761
    :goto_1
    return v0

    .line 726
    :pswitch_0
    invoke-direct {p0, p5, p3, p2, v7}, Lcom/mediatek/mom/r;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    move v0, v7

    .line 727
    goto :goto_1

    .line 730
    :pswitch_1
    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/r;->a(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)I

    .line 732
    invoke-direct {p0, p5, p3, p2, v6}, Lcom/mediatek/mom/r;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    move v0, v6

    .line 733
    goto :goto_1

    .line 735
    :pswitch_2
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 736
    invoke-virtual {v2, v1}, Lcom/mediatek/common/mom/PermissionRecord;->setStatus(I)V

    .line 737
    iget-object v1, p0, Lcom/mediatek/mom/r;->ag:Lcom/mediatek/mom/s;

    invoke-virtual {v1, v4, p1, p3}, Lcom/mediatek/mom/s;->c(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    const-string v0, "checkPermission DENIED because checking is still ongoing"

    invoke-static {p2, p3, v0}, Lcom/mediatek/mom/r;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-direct {p0, p5, p3, p2, v6}, Lcom/mediatek/mom/r;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    move v0, v6

    .line 741
    goto :goto_1

    .line 743
    :cond_1
    iget-object v1, p0, Lcom/mediatek/mom/r;->ag:Lcom/mediatek/mom/s;

    invoke-virtual {v1, v4, p1, p3, v0}, Lcom/mediatek/mom/s;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 745
    if-eqz p5, :cond_2

    .line 746
    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v3

    invoke-interface {p5}, Lcom/mediatek/common/mom/IRequestedPermissionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/mom/r;->a(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;Landroid/os/IBinder;)V

    move v0, v7

    goto :goto_1

    .line 749
    :cond_2
    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/r;->a(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)I

    move-result v0

    goto :goto_1

    .line 758
    :cond_3
    const-string v0, "checkPermission UNMONITORED"

    invoke-static {p2, p3, v0}, Lcom/mediatek/mom/r;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-direct {p0, p5, p3, p2, v7}, Lcom/mediatek/mom/r;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    goto :goto_0

    .line 723
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)I
    .locals 4

    .prologue
    .line 780
    .line 783
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 784
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/r;->b(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 785
    invoke-static {}, Lcom/mediatek/mom/g;->b()Lcom/mediatek/mom/g;

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/mom/r;->getManagerApListener(I)Landroid/os/IBinder;

    move-result-object v0

    const/4 v3, -0x1

    invoke-static {v2, v0, v1, v3}, Lcom/mediatek/mom/g;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    .line 789
    return v0
.end method

.method public static final a(Lcom/mediatek/mom/p;)Lcom/mediatek/mom/ControllerBase;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/mediatek/mom/r;->c:Lcom/mediatek/mom/ControllerBase;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/mediatek/mom/r;

    invoke-direct {v0, p0}, Lcom/mediatek/mom/r;-><init>(Lcom/mediatek/mom/p;)V

    sput-object v0, Lcom/mediatek/mom/r;->c:Lcom/mediatek/mom/ControllerBase;

    .line 135
    const-string v0, "PermissionController"

    const-string v1, "Create MobileManagerController: PermissionController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    sget-object v0, Lcom/mediatek/mom/r;->c:Lcom/mediatek/mom/ControllerBase;

    return-object v0
.end method

.method private a(III)V
    .locals 3

    .prologue
    .line 545
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mom.action.MGR_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    const-string v1, "mom.action.extra.status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 547
    const-string v1, "mom.action.extra.uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 548
    iget-object v1, p0, Lcom/mediatek/mom/r;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 549
    return-void
.end method

.method public static a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 822
    sget-boolean v0, Lcom/mediatek/mom/r;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 824
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    const-string v1, "PermissionController"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_0
    return-void
.end method

.method private a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/mediatek/mom/r;->af:Lcom/mediatek/mom/u;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/mom/u;->e(ILjava/util/List;)V

    .line 553
    return-void
.end method

.method private a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 766
    if-eqz p1, :cond_0

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPermission MoMS >> Caller with result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p2, v0}, Lcom/mediatek/mom/r;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 769
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 770
    invoke-interface {p1, p2, p3, p4}, Lcom/mediatek/common/mom/IRequestedPermissionCallback;->onPermissionCheckResult(Ljava/lang/String;II)V

    .line 771
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :goto_0
    const-string v0, "checkPermission MoMS << Caller"

    invoke-static {p3, p2, v0}, Lcom/mediatek/mom/r;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 777
    :cond_0
    return-void

    .line 772
    :catch_0
    move-exception v0

    .line 773
    const-string v1, "PermissionController"

    const-string v2, "onPermissionCheckResult() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/mediatek/mom/r;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mediatek/mom/r;->w()V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 276
    .line 278
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInitCache("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") at User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0, p2}, Lcom/mediatek/mom/r;->isValidUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/mom/r;->ai:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 285
    invoke-static {p2, p1}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_2

    .line 287
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/mediatek/mom/p;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/mediatek/mom/r;->af:Lcom/mediatek/mom/u;

    invoke-virtual {v1, p2, v0}, Lcom/mediatek/mom/u;->a(ILandroid/content/pm/PackageInfo;)V

    goto :goto_0

    .line 290
    :cond_1
    const-string v0, "PermissionController"

    const-string v1, "Ignore system application"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    :cond_2
    const-string v0, "PermissionController"

    const-string v1, "null pkgInfo when package added / removed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :cond_3
    const-string v0, "PermissionController"

    const-string v1, "handleInitCache() not ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 793
    .line 796
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 797
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/r;->b(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 798
    invoke-static {}, Lcom/mediatek/mom/g;->b()Lcom/mediatek/mom/g;

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/mom/r;->getManagerApListener(I)Landroid/os/IBinder;

    move-result-object v0

    const/4 v3, -0x1

    invoke-static {v2, v0, v1, v3, p6}, Lcom/mediatek/mom/g;->a(ILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V

    .line 802
    return-void
.end method

.method private b(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 669
    const/4 v0, 0x0

    .line 672
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/mom/r;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 673
    const-string v1, "checkPermission GRANTED because listener from MOMA is null"

    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/r;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-direct {p0, p4, p1, p2, v0}, Lcom/mediatek/mom/r;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    .line 701
    :goto_0
    return v6

    .line 678
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mom/r;->ad:Landroid/content/pm/IPackageManager;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 679
    if-nez v1, :cond_1

    .line 680
    const-string v1, "checkPermission UNMONITORED"

    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/r;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-direct {p0, p4, p1, p2, v0}, Lcom/mediatek/mom/r;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 697
    :catch_0
    move-exception v0

    .line 698
    const-string v0, "getPackagesForUid() faild!"

    invoke-static {p2, p1, v0}, Lcom/mediatek/mom/r;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-direct {p0, p4, p1, p2, v6}, Lcom/mediatek/mom/r;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    :goto_1
    move v0, v6

    :goto_2
    move v6, v0

    .line 701
    goto :goto_0

    .line 684
    :cond_1
    :try_start_1
    array-length v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 685
    const/4 v0, 0x0

    aget-object v1, v1, v0

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/r;->a(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I

    move-result v0

    goto :goto_2

    .line 688
    :cond_2
    iget-object v0, p0, Lcom/mediatek/mom/r;->af:Lcom/mediatek/mom/u;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v2, p1, v1}, Lcom/mediatek/mom/u;->a(ILjava/lang/String;[Ljava/lang/String;)Lcom/mediatek/common/mom/PermissionRecord;

    move-result-object v0

    .line 689
    if-eqz v0, :cond_3

    .line 690
    iget-object v1, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/r;->a(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I

    move-result v0

    goto :goto_2

    .line 692
    :cond_3
    const-string v0, "checkPermission UNMONITORED"

    invoke-static {p2, p1, v0}, Lcom/mediatek/mom/r;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 693
    const/4 v0, 0x0

    .line 694
    invoke-direct {p0, p4, p1, p2, v0}, Lcom/mediatek/mom/r;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 805
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 806
    const-string v1, "param_package"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v1, "param_permission_record"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 808
    const-string v1, "param_flag"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 809
    const-string v1, "param_uid"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 810
    const-string v1, "param_data"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 811
    return-object v0
.end method

.method private b(IZ)Lcom/mediatek/mom/i;
    .locals 5

    .prologue
    .line 431
    const/4 v1, 0x0

    .line 432
    iget-object v2, p0, Lcom/mediatek/mom/r;->ak:Ljava/util/Map;

    monitor-enter v2

    .line 433
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 434
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 435
    iget-object v3, p0, Lcom/mediatek/mom/r;->ak:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 436
    if-eqz v0, :cond_1

    .line 437
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 438
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/i;

    .line 440
    invoke-virtual {v0}, Lcom/mediatek/mom/i;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/mom/i;->isEnabled()Z

    move-result v4

    if-ne v4, p2, :cond_0

    .line 446
    :goto_0
    monitor-exit v2

    .line 447
    return-object v0

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 818
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Lcom/mediatek/mom/r;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 819
    return-void
.end method

.method private b(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/mediatek/mom/r;->af:Lcom/mediatek/mom/u;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/mom/u;->d(ILjava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/mom/r;->ai:Z

    .line 557
    return-void
.end method

.method private c(IZ)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 482
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 484
    iget-object v2, p0, Lcom/mediatek/mom/r;->ak:Ljava/util/Map;

    monitor-enter v2

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/r;->ak:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 486
    if-eqz v0, :cond_2

    .line 487
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 488
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/i;

    .line 490
    invoke-virtual {v0}, Lcom/mediatek/mom/i;->getUid()I

    move-result v4

    if-eq v4, p1, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/mom/i;->isEnabled()Z

    move-result v4

    if-ne v4, v7, :cond_0

    .line 492
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/mediatek/mom/i;->setEnable(Z)V

    .line 494
    if-ne p2, v7, :cond_1

    .line 495
    const-string v4, "PermissionController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MoMS >> MoMA] onConnectionEnded() start with uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/mom/i;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " identity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/mom/i;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {v0}, Lcom/mediatek/mom/i;->d()Z

    .line 497
    const-string v4, "PermissionController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MoMS << MoMA] onConnectionEnded() end with uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/mom/i;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " identity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/mom/i;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_1
    const-string v4, "PermissionController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcast DETACHED a permission manager("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/mom/i;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") at User("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/mediatek/mom/i;->getUid()I

    move-result v0

    invoke-direct {p0, v4, v0, v1}, Lcom/mediatek/mom/r;->a(III)V

    goto/16 :goto_0

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    const-string v0, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast ATTACHED a permission manager("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-direct {p0, v8, p1, v1}, Lcom/mediatek/mom/r;->a(III)V

    .line 509
    return-void
.end method

.method private t(I)V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mediatek/mom/r;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/mediatek/mom/r;->ah:Lcom/mediatek/mom/j;

    invoke-static {p1}, Lcom/mediatek/mom/j;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/mediatek/mom/r;->ah:Lcom/mediatek/mom/j;

    invoke-static {p1}, Lcom/mediatek/mom/j;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v0}, Lcom/mediatek/mom/p;->g(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 178
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 179
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/mediatek/mom/r;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 182
    const-string v1, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initPermControlAp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v1, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initPermControlAp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") skipped!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_1
    const-string v0, "PermissionController"

    const-string v1, "initPermControlAp() failed due to null context"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private v()V
    .locals 5

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/r;->ae:Landroid/os/IUserManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 121
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 123
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Lcom/mediatek/mom/p;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/mom/r;->b(ILjava/util/List;)V

    .line 124
    const-string v2, "PermissionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initCacheForAllUser() for User("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v1, "PermissionController"

    const-string v2, "getUsers() failed! "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mediatek/mom/r;->ah:Lcom/mediatek/mom/j;

    invoke-static {}, Lcom/mediatek/mom/j;->g()Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 162
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/mom/r;->t(I)V

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method

.method private y(I)V
    .locals 6

    .prologue
    .line 512
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 515
    const-string v1, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast DETACHED a permission manager("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/mediatek/mom/r;->a(III)V

    .line 518
    iget-object v1, p0, Lcom/mediatek/mom/r;->ak:Ljava/util/Map;

    monitor-enter v1

    .line 519
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mom/r;->ak:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 520
    if-eqz v0, :cond_1

    .line 521
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 522
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/i;

    .line 524
    invoke-virtual {v0}, Lcom/mediatek/mom/i;->getUid()I

    move-result v3

    if-eq v3, p1, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/mom/i;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 526
    const-string v3, "PermissionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MoMS >> MoMA] onConnectionResume() start with uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/i;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " identity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/i;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {v0}, Lcom/mediatek/mom/i;->e()Z

    .line 528
    const-string v3, "PermissionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MoMS << MoMA] onConnectionResume() end with uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/i;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " identity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/i;->c()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    return-void
.end method

.method private z(I)V
    .locals 4

    .prologue
    .line 536
    iget-object v1, p0, Lcom/mediatek/mom/r;->ak:Ljava/util/Map;

    monitor-enter v1

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/r;->ak:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    const-string v0, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clear control token(s) for User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/mediatek/mom/r;->ak:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :cond_0
    monitor-exit v1

    .line 542
    return-void

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public A(I)V
    .locals 1

    .prologue
    .line 617
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/r;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/mediatek/mom/r;->af:Lcom/mediatek/mom/u;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/u;->F(I)V

    .line 620
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;ILandroid/os/Bundle;)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 633
    const/4 v0, 0x0

    .line 635
    invoke-virtual {p0}, Lcom/mediatek/mom/r;->isControllerEnabled()Z

    move-result v1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/mom/r;->ai:Z

    if-ne v1, v2, :cond_0

    .line 637
    const-string v1, "checkPermission START"

    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/r;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_1

    .line 639
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/mom/r;->b(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I

    move-result v0

    .line 644
    :cond_0
    :goto_0
    return v0

    .line 641
    :cond_1
    const-string v1, "checkPermision GRANTED with system uid"

    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/r;->b(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(ILcom/mediatek/common/mom/PermissionRecord;)V
    .locals 4

    .prologue
    .line 573
    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Lcom/mediatek/mom/r;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 574
    iget-object v0, p0, Lcom/mediatek/mom/r;->af:Lcom/mediatek/mom/u;

    iget-object v1, p2, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/mediatek/mom/u;->d(ILjava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    .line 575
    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {v0}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    .line 577
    invoke-virtual {p2}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/common/mom/Permission;->setStatus(I)V

    .line 578
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Set User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/common/mom/PermissionRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :goto_0
    return-void

    .line 580
    :cond_0
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore setting user-confirm permission record:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/common/mom/PermissionRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/mediatek/mom/r;->J:Lcom/mediatek/mom/p;

    iget-object v0, p2, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/mom/p;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 584
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Set pending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/common/mom/PermissionRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v1, p0, Lcom/mediatek/mom/r;->al:Ljava/util/Map;

    monitor-enter v1

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/r;->al:Ljava/util/Map;

    iget-object v2, p2, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    iget-object v0, p0, Lcom/mediatek/mom/r;->al:Ljava/util/Map;

    iget-object v2, p2, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 589
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 591
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 592
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    iget-object v2, p0, Lcom/mediatek/mom/r;->al:Ljava/util/Map;

    iget-object v3, p2, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 597
    :cond_3
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mediatek/common/mom/PermissionRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 600
    :cond_4
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setPermissionRecord() with null record!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 648
    const/4 v0, 0x0

    .line 650
    if-nez p4, :cond_0

    .line 651
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Async check with null callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/mom/r;->isControllerEnabled()Z

    move-result v1

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/mom/r;->ai:Z

    if-ne v1, v2, :cond_2

    .line 656
    const-string v1, "checkPermissionAsync START"

    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/r;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_1

    .line 658
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/mom/r;->b(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I

    .line 666
    :goto_0
    return-void

    .line 660
    :cond_1
    const-string v1, "checkPermisionAsync GRANTED with system uid"

    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/r;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-direct {p0, p4, p1, p2, v0}, Lcom/mediatek/mom/r;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    goto :goto_0

    .line 664
    :cond_2
    invoke-direct {p0, p4, p1, p2, v0}, Lcom/mediatek/mom/r;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public a(Lcom/mediatek/common/mom/IMobileConnectionCallback;III)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 334
    .line 335
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 336
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 338
    iget-object v0, p0, Lcom/mediatek/mom/r;->ah:Lcom/mediatek/mom/j;

    invoke-static {p4}, Lcom/mediatek/mom/j;->f(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 339
    iget-object v5, p0, Lcom/mediatek/mom/r;->ak:Ljava/util/Map;

    monitor-enter v5

    .line 340
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p2, v0}, Lcom/mediatek/mom/r;->b(IZ)Lcom/mediatek/mom/i;

    move-result-object v3

    .line 341
    if-eqz v3, :cond_0

    .line 342
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already attached from uid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    monitor-exit v5

    move v0, v2

    .line 395
    :goto_0
    return v0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mom/r;->ak:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 346
    if-nez v0, :cond_7

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    iget-object v6, p0, Lcom/mediatek/mom/r;->ak:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    .line 352
    :goto_1
    if-le p4, p3, :cond_2

    .line 353
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/mediatek/mom/r;->c(IZ)V

    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/mom/r;->b(IZ)Lcom/mediatek/mom/i;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_1

    .line 356
    const-string v1, "PermissionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attach an exist manager control token from uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with identity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v0, p1}, Lcom/mediatek/mom/i;->a(Lcom/mediatek/common/mom/IMobileConnectionCallback;)V

    .line 366
    :goto_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/i;->setEnable(Z)V

    move v0, v2

    .line 391
    :goto_3
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 361
    :cond_1
    :try_start_1
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attach a new manager control token from uid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with identity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v0, Lcom/mediatek/mom/i;

    invoke-direct {v0, p2, p4, p1}, Lcom/mediatek/mom/i;-><init>(IILcom/mediatek/common/mom/IMobileConnectionCallback;)V

    .line 364
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 368
    :cond_2
    if-ne p4, p3, :cond_4

    .line 369
    if-eqz v3, :cond_3

    .line 370
    invoke-virtual {v3, p1}, Lcom/mediatek/mom/i;->a(Lcom/mediatek/common/mom/IMobileConnectionCallback;)V

    move-object v0, v3

    .line 377
    :goto_4
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/i;->setEnable(Z)V

    move v0, v2

    .line 378
    goto :goto_3

    .line 372
    :cond_3
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attach new uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with existing identity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v0, Lcom/mediatek/mom/i;

    invoke-direct {v0, p2, p4, p1}, Lcom/mediatek/mom/i;-><init>(IILcom/mediatek/common/mom/IMobileConnectionCallback;)V

    .line 375
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 380
    :cond_4
    const-string v0, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attach failed due to minor identity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/mom/r;->b(IZ)Lcom/mediatek/mom/i;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_5

    .line 384
    invoke-virtual {v0, p1}, Lcom/mediatek/mom/i;->a(Lcom/mediatek/common/mom/IMobileConnectionCallback;)V

    .line 385
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/mom/i;->setEnable(Z)V

    move v0, v1

    goto/16 :goto_3

    .line 387
    :cond_5
    new-instance v0, Lcom/mediatek/mom/i;

    invoke-direct {v0, p2, p4, p1}, Lcom/mediatek/mom/i;-><init>(IILcom/mediatek/common/mom/IMobileConnectionCallback;)V

    .line 388
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto/16 :goto_3

    .line 393
    :cond_6
    const-string v0, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attach failed with invalid uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " identity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0

    :cond_7
    move-object v4, v0

    goto/16 :goto_1
.end method

.method public c(ILjava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 563
    const/4 v0, 0x0

    .line 564
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 565
    iget-object v0, p0, Lcom/mediatek/mom/r;->af:Lcom/mediatek/mom/u;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/mom/u;->e(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 569
    :goto_0
    return-object v0

    .line 567
    :cond_0
    const-string v1, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 605
    if-eqz p2, :cond_0

    .line 606
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 607
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/PermissionRecord;

    .line 609
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/mom/r;->a(ILcom/mediatek/common/mom/PermissionRecord;)V

    goto :goto_0

    .line 612
    :cond_0
    const-string v0, "PermissionController"

    const-string v1, "setPermissionCache() with null setting!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_1
    return-void
.end method

.method public declared-synchronized enableController(Z)V
    .locals 3

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/mediatek/mom/MultiUserControllerBase;->enableController(Z)V

    .line 308
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enableController() enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Lcom/mediatek/mom/r;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Enable permission controller without register listener!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 314
    :cond_0
    :try_start_1
    sput-boolean p1, Lcom/mediatek/mom/r;->DEBUG:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    monitor-exit p0

    return-void
.end method

.method public getParentPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/mediatek/mom/r;->af:Lcom/mediatek/mom/u;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/u;->k(Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    .line 624
    if-eqz v0, :cond_0

    .line 625
    iget-object v0, v0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    .line 627
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserConfirmTime(IJ)J
    .locals 6

    .prologue
    .line 321
    iget-object v0, p0, Lcom/mediatek/mom/r;->ag:Lcom/mediatek/mom/s;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/mom/s;->a(IJ)J

    move-result-wide v0

    .line 323
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 324
    const-string v2, "PermissionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserConfirmTime() fix extending time from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-wide/16 v0, 0x0

    .line 327
    :cond_0
    return-wide v0
.end method

.method public onPackageStatusChange(ILjava/lang/String;I)V
    .locals 5

    .prologue
    .line 221
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 222
    const-string v0, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPackageStatusChange() status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0, v1}, Lcom/mediatek/mom/r;->isValidUserId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 229
    :cond_1
    packed-switch p3, :pswitch_data_0

    .line 271
    const-string v0, "PermissionController"

    const-string v1, "Unkown package status!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :pswitch_1
    invoke-direct {p0, p2, v1}, Lcom/mediatek/mom/r;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 235
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/mom/r;->af:Lcom/mediatek/mom/u;

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/u;->d(ILjava/lang/String;)V

    .line 236
    const-string v0, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove cache for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0, v1}, Lcom/mediatek/mom/r;->x(I)Lcom/mediatek/mom/i;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/mediatek/mom/i;->c()I

    move-result v0

    .line 242
    invoke-static {v0}, Lcom/mediatek/mom/j;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uninstall Permission Control App: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/r;->u(I)V

    goto :goto_0

    .line 250
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/mom/r;->af:Lcom/mediatek/mom/u;

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/u;->e(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 251
    invoke-direct {p0, p2, v1}, Lcom/mediatek/mom/r;->a(Ljava/lang/String;I)V

    .line 253
    iget-object v2, p0, Lcom/mediatek/mom/r;->al:Ljava/util/Map;

    monitor-enter v2

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/r;->al:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    const-string v0, "PermissionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set pending settings for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/mediatek/mom/r;->al:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 258
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/PermissionRecord;

    .line 260
    invoke-virtual {p0, v1, v0}, Lcom/mediatek/mom/r;->a(ILcom/mediatek/common/mom/PermissionRecord;)V

    goto :goto_1

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 262
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/mom/r;->al:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onUserStatusChange(II)V
    .locals 3

    .prologue
    .line 193
    packed-switch p2, :pswitch_data_0

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 197
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/r;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purn cache for User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {p1}, Lcom/mediatek/mom/p;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/mom/r;->a(ILjava/util/List;)V

    goto :goto_0

    .line 203
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/r;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init cache for User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {p1}, Lcom/mediatek/mom/p;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/mom/r;->b(ILjava/util/List;)V

    goto :goto_0

    .line 209
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/r;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove cache for User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/mediatek/mom/r;->af:Lcom/mediatek/mom/u;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/u;->D(I)V

    .line 212
    invoke-direct {p0, p1}, Lcom/mediatek/mom/r;->z(I)V

    goto/16 :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public s(I)V
    .locals 1

    .prologue
    .line 168
    invoke-static {p1}, Lcom/mediatek/mom/j;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0, p1}, Lcom/mediatek/mom/r;->t(I)V

    .line 171
    :cond_0
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 151
    iput-object p1, p0, Lcom/mediatek/mom/r;->mContext:Landroid/content/Context;

    .line 152
    invoke-direct {p0}, Lcom/mediatek/mom/r;->w()V

    .line 153
    iget-object v0, p0, Lcom/mediatek/mom/r;->aj:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/mediatek/mom/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/mom/r$a;-><init>(Lcom/mediatek/mom/r;Lcom/mediatek/mom/r$1;)V

    iget-object v1, p0, Lcom/mediatek/mom/r;->aj:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/r;->b:Z

    .line 156
    return-void
.end method

.method public u(I)V
    .locals 6

    .prologue
    .line 399
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 401
    iget-object v2, p0, Lcom/mediatek/mom/r;->ak:Ljava/util/Map;

    monitor-enter v2

    .line 402
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/mediatek/mom/r;->b(IZ)Lcom/mediatek/mom/i;

    move-result-object v3

    .line 403
    if-eqz v3, :cond_0

    .line 404
    const-string v0, "PermissionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "detach control token from uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with identity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/mediatek/mom/i;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/mediatek/mom/r;->ak:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 408
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 409
    invoke-direct {p0, p1}, Lcom/mediatek/mom/r;->y(I)V

    .line 410
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/mediatek/mom/r;->ak:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_0
    monitor-exit v2

    .line 415
    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public v(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 418
    const/4 v1, 0x0

    .line 420
    iget-object v2, p0, Lcom/mediatek/mom/r;->ak:Ljava/util/Map;

    monitor-enter v2

    .line 421
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1, v3}, Lcom/mediatek/mom/r;->b(IZ)Lcom/mediatek/mom/i;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 426
    :goto_0
    monitor-exit v2

    .line 427
    return v0

    .line 424
    :cond_0
    const-string v0, "PermissionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAttachment() failed with uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public w(I)I
    .locals 2

    .prologue
    .line 452
    const/4 v0, 0x0

    .line 453
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 455
    invoke-virtual {p0, v1}, Lcom/mediatek/mom/r;->x(I)Lcom/mediatek/mom/i;

    move-result-object v1

    .line 456
    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {v1}, Lcom/mediatek/mom/i;->c()I

    move-result v0

    .line 459
    :cond_0
    return v0
.end method

.method public x(I)Lcom/mediatek/mom/i;
    .locals 6

    .prologue
    .line 463
    const/4 v1, 0x0

    .line 465
    iget-object v2, p0, Lcom/mediatek/mom/r;->ak:Ljava/util/Map;

    monitor-enter v2

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/r;->ak:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 467
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 468
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 469
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/i;

    .line 471
    invoke-virtual {v0}, Lcom/mediatek/mom/i;->isEnabled()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 477
    :goto_0
    monitor-exit v2

    .line 478
    return-object v0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
