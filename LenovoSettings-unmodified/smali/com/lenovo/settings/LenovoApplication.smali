.class public Lcom/lenovo/settings/LenovoApplication;
.super Landroid/app/Application;
.source "LenovoApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 13
    invoke-static {p0}, Lcom/lenovo/settings/provider/DBUtils;->initAllItems(Landroid/content/Context;)V

    .line 16
    invoke-static {p0}, Lcom/lenovo/settings/LPSReaper;->initialize(Landroid/content/Context;)V

    .line 17
    return-void
.end method
