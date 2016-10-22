.class public Lcom/lenovo/settings/recentsettings/RecentSettingsApi;
.super Ljava/lang/Object;
.source "RecentSettingsApi.java"


# static fields
.field public static final PLUGIN_PREF_KEY:Ljava/lang/String; = "pluginPrefKey"

.field public static final PREF_KEY_AIRPLANE_MODE:Ljava/lang/String; = "airplane_mode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleStringId"    # I
    .param p2, "titleStringPackageName"    # Ljava/lang/String;
    .param p3, "screenTitleStringId"    # I
    .param p4, "fragmentClassName"    # Ljava/lang/String;
    .param p5, "intentAction"    # Ljava/lang/String;
    .param p6, "intentTargetPackage"    # Ljava/lang/String;
    .param p7, "intentTargetClass"    # Ljava/lang/String;

    .prologue
    .line 74
    return-void
.end method

.method public static addChangePluginSwitchAction(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleStringId"    # I
    .param p2, "titleStringPackageName"    # Ljava/lang/String;
    .param p3, "pluginPrefKey"    # Ljava/lang/String;

    .prologue
    .line 131
    return-void
.end method

.method public static addShowInfoAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleStringId"    # I
    .param p2, "titleStringPackageName"    # Ljava/lang/String;
    .param p3, "screenTitleStringId"    # I
    .param p4, "fragmentClassName"    # Ljava/lang/String;
    .param p5, "intentAction"    # Ljava/lang/String;
    .param p6, "intentTargetPackage"    # Ljava/lang/String;
    .param p7, "intentTargetClass"    # Ljava/lang/String;

    .prologue
    .line 107
    return-void
.end method
