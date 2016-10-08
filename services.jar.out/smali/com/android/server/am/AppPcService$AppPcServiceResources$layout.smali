.class public Lcom/android/server/am/AppPcService$AppPcServiceResources$layout;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService$AppPcServiceResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "layout"
.end annotation


# static fields
.field public static permission_notify_dialog_customview:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2653
    const-string v0, "permission_notify_dialog_customview"

    sput-object v0, Lcom/android/server/am/AppPcService$AppPcServiceResources$layout;->permission_notify_dialog_customview:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
