.class Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;
.super Landroid/preference/Preference;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountPreference"
.end annotation


# instance fields
.field private final mFragment:Ljava/lang/String;

.field private final mFragmentArguments:Landroid/os/Bundle;

.field private final mTitle:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "fragment"    # Ljava/lang/String;
    .param p5, "fragmentArguments"    # Landroid/os/Bundle;
    .param p6, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;->this$0:Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;

    .line 546
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 547
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    .line 548
    iput-object p4, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    .line 549
    iput-object p5, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    .line 552
    invoke-virtual {p0, p3}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 553
    invoke-virtual {p0, p6}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 555
    invoke-virtual {p0, p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 556
    return-void
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 560
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 563
    const/4 v4, 0x1

    .line 565
    :cond_0
    return v4
.end method
