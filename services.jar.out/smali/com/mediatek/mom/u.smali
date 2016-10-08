.class Lcom/mediatek/mom/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mom/u$a;
    }
.end annotation


# static fields
.field private static ap:Lcom/mediatek/mom/u;


# instance fields
.field private aq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private ar:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mom/u$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mom/u;->ap:Lcom/mediatek/mom/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/u;->aq:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    .line 104
    invoke-direct {p0}, Lcom/mediatek/mom/u;->A()V

    .line 105
    return-void
.end method

.method private A()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 594
    .line 597
    const-string v0, "sub-permission.SEND_SMS"

    const-string v1, "android.permission.SEND_SMS"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sub-permission.SEND_MMS"

    aput-object v1, v0, v2

    const-string v1, "sub-permission.SEND_EMAIL"

    aput-object v1, v0, v3

    .line 604
    const-string v1, "android.permission.INTERNET"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/u;->a([Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sub-permission.QUERY_SMS"

    aput-object v1, v0, v2

    const-string v1, "sub-permission.QUERY_MMS"

    aput-object v1, v0, v3

    .line 610
    const-string v1, "android.permission.READ_SMS"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/u;->a([Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sub-permission.MODIFY_SMS"

    aput-object v1, v0, v2

    const-string v1, "sub-permission.MODIFY_MMS"

    aput-object v1, v0, v3

    .line 616
    const-string v1, "android.permission.WRITE_SMS"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/u;->a([Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v0, "sub-permission.QUERY_CONTACTS"

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v0, "sub-permission.MODIFY_CONTACTS"

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v0, "sub-permission.QUERY_CALL_LOG"

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v0, "sub-permission.MODIFY_CALL_LOG"

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v0, "sub-permission.ACCESS_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v0, "sub-permission.RECORD_MIC"

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v0, "sub-permission.OPEN_CAMERA"

    const-string v1, "android.permission.CAMERA"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sub-permission.MAKE_CALL"

    aput-object v1, v0, v2

    const-string v1, "sub-permission.MAKE_CONFERENCE_CALL"

    aput-object v1, v0, v3

    .line 643
    const-string v1, "android.permission.CALL_PHONE"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/u;->a([Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v0, "sub-permission.READ_PHONE_IMEI"

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v0, "sub-permission.CHANGE_NETWORK_STATE_ON"

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v0, "sub-permission.CHANGE_WIFI_STATE_ON"

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v0, "sub-permission.CHANGE_BT_STATE_ON"

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v0, "ro.mtk_hotknot_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    const-string v0, "sub-permission.ACCESS_HOTKNOT"

    const-string v1, "android.permission.HOTKNOT"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_0
    return-void
.end method

.method public static E(I)Z
    .locals 1

    .prologue
    .line 484
    and-int/lit8 v0, p0, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;)",
            "Lcom/mediatek/common/mom/Permission;"
        }
    .end annotation

    .prologue
    .line 437
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 438
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permissionName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "permissionList :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 442
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 443
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/Permission;

    .line 445
    iget-object v2, v0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 454
    :goto_0
    return-object v0

    .line 447
    :cond_3
    iget-object v2, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 448
    iget-object v0, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_2

    goto :goto_0

    .line 454
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;II)Lcom/mediatek/common/mom/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;II)",
            "Lcom/mediatek/common/mom/Permission;"
        }
    .end annotation

    .prologue
    .line 701
    new-instance v0, Lcom/mediatek/common/mom/Permission;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mom/u$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 203
    invoke-direct {p0, v0}, Lcom/mediatek/mom/u;->b(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v3

    .line 204
    if-eqz v3, :cond_0

    .line 205
    new-instance v4, Lcom/mediatek/mom/u$a;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, p0, v0, v3}, Lcom/mediatek/mom/u$a;-><init>(Lcom/mediatek/mom/u;Ljava/lang/String;Ljava/util/List;)V

    .line 206
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_1
    return-object v2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 666
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 670
    const/4 v1, 0x2

    invoke-static {p1, p3, v1}, Lcom/mediatek/mom/u;->b(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    iget-object v1, p0, Lcom/mediatek/mom/u;->aq:Ljava/util/List;

    new-instance v2, Lcom/mediatek/common/mom/Permission;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, p2, v0, v3, v4}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .line 176
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 177
    :cond_0
    const-string v0, "PermissionRecordHelper"

    const-string v1, "copyPermissionSettings() failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    return-void

    .line 180
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 181
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/Permission;

    .line 183
    iget-object v2, v0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;

    move-result-object v2

    .line 184
    if-eqz v2, :cond_4

    .line 185
    const-string v3, "PermissionRecordHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Copy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v2}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mediatek/common/mom/Permission;->setStatus(I)V

    .line 188
    :cond_4
    iget-object v3, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 189
    iget-object v2, v2, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    iget-object v0, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/mediatek/mom/u;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 681
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/mom/u;->a([Ljava/lang/String;Ljava/lang/String;I)V

    .line 682
    return-void
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 685
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 686
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 687
    aget-object v3, p1, v0

    const/4 v4, 0x2

    invoke-static {v3, p3, v4}, Lcom/mediatek/mom/u;->b(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mom/u;->aq:Ljava/util/List;

    new-instance v3, Lcom/mediatek/common/mom/Permission;

    const/4 v4, 0x1

    invoke-direct {v3, p2, v2, v1, v4}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    return-void
.end method

.method private static b(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;
    .locals 2

    .prologue
    .line 705
    or-int/lit8 v0, p2, 0x2

    .line 706
    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/util/List;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;)",
            "Lcom/mediatek/common/mom/Permission;"
        }
    .end annotation

    .prologue
    .line 461
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subPermissionName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "permissionList :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 466
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 467
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/Permission;

    .line 469
    iget-object v2, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 470
    iget-object v2, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-static {p0, v2}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;

    move-result-object v2

    .line 471
    if-eqz v2, :cond_2

    .line 477
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/pm/PackageInfo;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 267
    .line 270
    if-nez p1, :cond_0

    .line 271
    const-string v0, "PermissionRecordHelper"

    const-string v1, "getPermissionList() failed! null package info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_0
    return-object v4

    .line 275
    :cond_0
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 276
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 278
    if-eqz v5, :cond_5

    array-length v0, v5

    if-lez v0, :cond_5

    .line 279
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 281
    :goto_1
    array-length v0, v5

    if-ge v1, v0, :cond_4

    .line 282
    aget v0, v6, v1

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 281
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 288
    :cond_2
    aget-object v0, v5, v1

    iget-object v7, p0, Lcom/mediatek/mom/u;->aq:Ljava/util/List;

    invoke-static {v0, v7}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_1

    .line 292
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 293
    iget-object v0, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 296
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/Permission;

    .line 298
    new-instance v9, Lcom/mediatek/common/mom/Permission;

    iget-object v10, v0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v11

    invoke-virtual {v0}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v0

    invoke-direct {v9, v10, v4, v11, v0}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    .line 299
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 303
    :cond_3
    new-instance v0, Lcom/mediatek/common/mom/Permission;

    aget-object v8, v5, v1

    const/4 v9, 0x1

    invoke-direct {v0, v8, v7, v2, v9}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    .line 307
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v0, v3

    :goto_4
    move-object v4, v0

    .line 311
    goto :goto_0

    :cond_5
    move-object v0, v4

    goto :goto_4
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 573
    if-eqz p1, :cond_1

    .line 574
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 575
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/Permission;

    .line 577
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/common/mom/Permission;->setStatus(I)V

    .line 578
    iget-object v2, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 579
    iget-object v0, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/mediatek/mom/u;->b(Ljava/util/List;)V

    goto :goto_0

    .line 583
    :cond_1
    return-void
.end method

.method public static z()Lcom/mediatek/mom/u;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/mediatek/mom/u;->ap:Lcom/mediatek/mom/u;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/mediatek/mom/u;

    invoke-direct {v0}, Lcom/mediatek/mom/u;-><init>()V

    sput-object v0, Lcom/mediatek/mom/u;->ap:Lcom/mediatek/mom/u;

    .line 111
    :cond_0
    sget-object v0, Lcom/mediatek/mom/u;->ap:Lcom/mediatek/mom/u;

    return-object v0
.end method


# virtual methods
.method public D(I)V
    .locals 3

    .prologue
    .line 213
    iget-object v1, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    monitor-exit v1

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public F(I)V
    .locals 3

    .prologue
    .line 545
    iget-object v1, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    monitor-enter v1

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 547
    if-eqz v0, :cond_0

    .line 548
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 549
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/u$a;

    .line 551
    invoke-virtual {v0}, Lcom/mediatek/mom/u$a;->B()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/mom/u;->b(Ljava/util/List;)V

    goto :goto_0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    return-void
.end method

.method public a(ILjava/lang/String;[Ljava/lang/String;)Lcom/mediatek/common/mom/PermissionRecord;
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 371
    .line 375
    array-length v5, p3

    move v4, v0

    move v2, v0

    move-object v0, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, p3, v4

    .line 376
    invoke-virtual {p0, p1, v1, p2}, Lcom/mediatek/mom/u;->d(ILjava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;

    move-result-object v6

    .line 377
    if-eqz v6, :cond_0

    .line 378
    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v1, v2

    .line 375
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_0

    .line 380
    :pswitch_1
    invoke-virtual {v6}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v7

    if-eq v7, v9, :cond_1

    invoke-virtual {v6}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 382
    :cond_1
    invoke-virtual {v6}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v0

    .line 384
    const-string v2, "PermissionRecordHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStrictPermissionForUid() found package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto :goto_1

    .line 388
    :pswitch_2
    invoke-virtual {v6}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 389
    invoke-virtual {v6}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v0

    .line 391
    const-string v2, "PermissionRecordHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStrictPermissionForUid() found package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto :goto_1

    .line 399
    :cond_2
    if-eqz v0, :cond_3

    .line 400
    new-instance v1, Lcom/mediatek/common/mom/PermissionRecord;

    invoke-direct {v1, v0, p2, v2}, Lcom/mediatek/common/mom/PermissionRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v1

    .line 402
    :goto_2
    return-object v0

    :cond_3
    move-object v0, v3

    goto :goto_2

    .line 378
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(ILandroid/content/pm/PackageInfo;)V
    .locals 7

    .prologue
    .line 219
    iget-object v3, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    monitor-enter v3

    .line 220
    const/4 v2, 0x0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 224
    if-eqz v0, :cond_1

    .line 225
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 226
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 227
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mom/u$a;

    .line 228
    invoke-virtual {v1}, Lcom/mediatek/mom/u$a;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 229
    invoke-direct {p0, p2}, Lcom/mediatek/mom/u;->b(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v2

    .line 230
    if-eqz v2, :cond_2

    .line 231
    invoke-virtual {v1, v2}, Lcom/mediatek/mom/u$a;->c(Ljava/util/List;)V

    .line 235
    :goto_0
    const/4 v1, 0x1

    .line 240
    :goto_1
    if-nez v1, :cond_1

    .line 241
    invoke-direct {p0, p2}, Lcom/mediatek/mom/u;->b(Landroid/content/pm/PackageInfo;)Ljava/util/List;

    move-result-object v1

    .line 242
    if-eqz v1, :cond_1

    .line 243
    new-instance v2, Lcom/mediatek/mom/u$a;

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, p0, v4, v1}, Lcom/mediatek/mom/u$a;-><init>(Lcom/mediatek/mom/u;Ljava/lang/String;Ljava/util/List;)V

    .line 244
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_1
    monitor-exit v3

    .line 249
    return-void

    .line 233
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public d(ILjava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;
    .locals 6

    .prologue
    .line 500
    const/4 v1, 0x0

    .line 501
    iget-object v2, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    monitor-enter v2

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 503
    if-eqz v0, :cond_2

    .line 504
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 505
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/u$a;

    .line 507
    invoke-virtual {v0}, Lcom/mediatek/mom/u$a;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 508
    invoke-virtual {v0}, Lcom/mediatek/mom/u$a;->B()Ljava/util/List;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_0

    .line 510
    invoke-static {p3, v0}, Lcom/mediatek/mom/u;->a(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 516
    goto :goto_0

    .line 512
    :cond_0
    const-string v0, "PermissionRecordHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not monitored packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " permissionName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 518
    :cond_2
    monitor-exit v2

    .line 519
    return-object v1

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 252
    iget-object v1, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    monitor-enter v1

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 254
    if-eqz v0, :cond_1

    .line 255
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 256
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/u$a;

    .line 258
    invoke-virtual {v0}, Lcom/mediatek/mom/u$a;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 263
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

    .line 264
    return-void
.end method

.method public d(ILjava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 120
    .line 123
    if-nez p2, :cond_0

    .line 124
    const-string v0, "PermissionRecordHelper"

    const-string v1, "initPkgPermissionCache() failed with null pkgInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x0

    .line 139
    :goto_0
    return v0

    .line 127
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 129
    iget-object v1, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const-string v0, "PermissionRecordHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update package data with userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/u;->D(I)V

    .line 134
    :cond_1
    invoke-direct {p0, p2}, Lcom/mediatek/mom/u;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 135
    iget-object v2, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    const-string v0, "PermissionRecordHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPkgPermissionCache() Done with userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x1

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e(ILjava/lang/String;)Ljava/util/List;
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
    .line 417
    iget-object v1, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    monitor-enter v1

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 419
    if-eqz v0, :cond_1

    .line 420
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 421
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/u$a;

    .line 423
    invoke-virtual {v0}, Lcom/mediatek/mom/u$a;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    invoke-virtual {v0}, Lcom/mediatek/mom/u$a;->B()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    .line 429
    :goto_0
    return-object v0

    .line 428
    :cond_1
    monitor-exit v1

    .line 429
    const/4 v0, 0x0

    goto :goto_0

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(ILjava/util/List;)V
    .locals 10
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
    .line 143
    .line 147
    if-nez p2, :cond_0

    .line 148
    const-string v1, "PermissionRecordHelper"

    const-string v2, "purnPkgPermissionCache() failed with null pkgInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    invoke-direct {p0, p2}, Lcom/mediatek/mom/u;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 152
    iget-object v5, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    monitor-enter v5

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 154
    iget-object v1, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 155
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 156
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/mediatek/mom/u$a;

    move-object v3, v0

    .line 158
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 159
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/mom/u$a;

    .line 162
    invoke-virtual {v3}, Lcom/mediatek/mom/u$a;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/mediatek/mom/u$a;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 163
    invoke-virtual {v2}, Lcom/mediatek/mom/u$a;->B()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3}, Lcom/mediatek/mom/u$a;->B()Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, v2, v8}, Lcom/mediatek/mom/u;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 167
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_4
    iget-object v1, p0, Lcom/mediatek/mom/u;->ar:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    return-void
.end method

.method public k(Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/mediatek/mom/u;->aq:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/mediatek/mom/u;->b(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    return-object v0
.end method
