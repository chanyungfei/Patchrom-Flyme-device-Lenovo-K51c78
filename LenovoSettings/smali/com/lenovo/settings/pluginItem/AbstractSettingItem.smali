.class public abstract Lcom/lenovo/settings/pluginItem/AbstractSettingItem;
.super Ljava/lang/Object;
.source "AbstractSettingItem.java"


# instance fields
.field protected mClassContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->mClassContext:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public getDependencyPluginKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->mClassContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public abstract getFragment()Landroid/app/Fragment;
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getParentKey()Ljava/lang/String;
.end method

.method public abstract getPosition()F
.end method

.method public abstract getPreference(Landroid/content/Context;)Landroid/preference/Preference;
.end method

.method protected getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->mClassContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
