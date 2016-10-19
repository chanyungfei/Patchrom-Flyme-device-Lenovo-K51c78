.class public Lcom/android/server/am/AppPcService$AppPcServiceResources$string;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService$AppPcServiceResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "string"
.end annotation


# static fields
.field public static accept_perm:Ljava/lang/String;

.field public static deny_perm:Ljava/lang/String;

.field public static notify_dialog_msg_body:Ljava/lang/String;

.field public static notify_dialog_title:Ljava/lang/String;

.field public static permission_block_network:Ljava/lang/String;

.field public static time_count_down_hint:Ljava/lang/String;

.field public static toast_deny_msg_body:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2643
    const-string v0, "notify_dialog_title"

    sput-object v0, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->notify_dialog_title:Ljava/lang/String;

    .line 2644
    const-string v0, "accept_perm"

    sput-object v0, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->accept_perm:Ljava/lang/String;

    .line 2645
    const-string v0, "deny_perm"

    sput-object v0, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->deny_perm:Ljava/lang/String;

    .line 2646
    const-string v0, "notify_dialog_msg_body"

    sput-object v0, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->notify_dialog_msg_body:Ljava/lang/String;

    .line 2647
    const-string v0, "toast_deny_msg_body"

    sput-object v0, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->toast_deny_msg_body:Ljava/lang/String;

    .line 2648
    const-string v0, "time_count_down_hint"

    sput-object v0, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->time_count_down_hint:Ljava/lang/String;

    .line 2649
    const-string v0, "permission_block_network"

    sput-object v0, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->permission_block_network:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
