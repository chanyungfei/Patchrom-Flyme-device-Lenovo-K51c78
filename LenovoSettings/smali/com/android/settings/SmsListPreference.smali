.class public Lcom/flyme/deviceoriginalsettings/SmsListPreference;
.super Landroid/preference/ListPreference;
.source "SmsListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/SmsListPreference$SmsArrayAdapter;
    }
.end annotation


# instance fields
.field private mEntryDrawables:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getEntryDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SmsListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 7
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SmsListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/SmsListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    .line 81
    .local v6, "selectedIndex":I
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SmsListPreference$SmsArrayAdapter;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SmsListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0400a9

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/SmsListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/SmsListPreference$SmsArrayAdapter;-><init>(Lcom/flyme/deviceoriginalsettings/SmsListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V

    .line 83
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 85
    return-void
.end method

.method public setEntryDrawables([Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "entries"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SmsListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    .line 72
    return-void
.end method
