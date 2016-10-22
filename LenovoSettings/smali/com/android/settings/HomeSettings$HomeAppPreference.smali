.class Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;
.super Landroid/preference/Preference;
.source "HomeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HomeAppPreference"
.end annotation


# instance fields
.field activityName:Landroid/content/ComponentName;

.field fragment:Lcom/flyme/deviceoriginalsettings/HomeSettings;

.field final grayscaleFilter:Landroid/graphics/ColorFilter;

.field index:I

.field isChecked:Z

.field isSystem:Z

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/HomeSettings;

.field uninstallTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/flyme/deviceoriginalsettings/HomeSettings;Landroid/content/pm/ActivityInfo;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "activity"    # Landroid/content/ComponentName;
    .param p4, "i"    # I
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "parent"    # Lcom/flyme/deviceoriginalsettings/HomeSettings;
    .param p8, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->this$0:Lcom/flyme/deviceoriginalsettings/HomeSettings;

    .line 240
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 241
    const v2, 0x7f040085

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->setLayoutResource(I)V

    .line 242
    invoke-virtual {p0, p5}, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 243
    invoke-virtual {p0, p6}, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 244
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->activityName:Landroid/content/ComponentName;

    .line 245
    iput-object p7, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->fragment:Lcom/flyme/deviceoriginalsettings/HomeSettings;

    .line 246
    iput p4, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->index:I

    .line 248
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 249
    .local v0, "colorMatrix":Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 250
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    .line 251
    .local v1, "matrix":[F
    const/16 v2, 0x12

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    .line 252
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->grayscaleFilter:Landroid/graphics/ColorFilter;

    .line 254
    invoke-direct {p0, p8}, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->determineTargets(Landroid/content/pm/ActivityInfo;)V

    .line 255
    return-void
.end method

.method private determineTargets(Landroid/content/pm/ActivityInfo;)V
    .locals 10
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 260
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 261
    .local v5, "meta":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    .line 262
    const-string v8, "android.app.home.alternate"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "altHomePackage":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 265
    :try_start_0
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->this$0:Lcom/flyme/deviceoriginalsettings/HomeSettings;

    iget-object v8, v8, Lcom/flyme/deviceoriginalsettings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v9, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 266
    .local v4, "match":I
    if-ltz v4, :cond_1

    .line 267
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->this$0:Lcom/flyme/deviceoriginalsettings/HomeSettings;

    iget-object v8, v8, Lcom/flyme/deviceoriginalsettings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 268
    .local v2, "altInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 269
    .local v0, "altFlags":I
    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_0

    move v8, v6

    :goto_0
    iput-boolean v8, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->isSystem:Z

    .line 270
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v0    # "altFlags":I
    .end local v1    # "altHomePackage":Ljava/lang/String;
    .end local v2    # "altInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "match":I
    :goto_1
    return-void

    .restart local v0    # "altFlags":I
    .restart local v1    # "altHomePackage":Ljava/lang/String;
    .restart local v2    # "altInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "match":I
    :cond_0
    move v8, v7

    .line 269
    goto :goto_0

    .line 273
    .end local v0    # "altFlags":I
    .end local v2    # "altInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "match":I
    :catch_0
    move-exception v3

    .line 275
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "HomeSettings"

    const-string v9, "Unable to compare/resolve alternate"

    invoke-static {v8, v9, v3}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    .end local v1    # "altHomePackage":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    :goto_2
    iput-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->isSystem:Z

    .line 281
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v6, v7

    .line 280
    goto :goto_2
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 288
    const v4, 0x7f0b00de

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 289
    .local v2, "radio":Landroid/widget/RadioButton;
    iget-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->isChecked:Z

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 291
    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->index:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 293
    .local v1, "indexObj":Ljava/lang/Integer;
    const v4, 0x7f0b00df

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 295
    .local v0, "icon":Landroid/widget/ImageView;
    iget-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->isSystem:Z

    if-eqz v4, :cond_0

    .line 296
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    :goto_0
    const v4, 0x7f0b00dd

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 307
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->this$0:Lcom/flyme/deviceoriginalsettings/HomeSettings;

    iget-object v4, v4, Lcom/flyme/deviceoriginalsettings/HomeSettings;->mHomeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 309
    return-void

    .line 300
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->this$0:Lcom/flyme/deviceoriginalsettings/HomeSettings;

    iget-object v4, v4, Lcom/flyme/deviceoriginalsettings/HomeSettings;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 302
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 320
    instance-of v1, p1, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 321
    check-cast v0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;

    .line 322
    .local v0, "pref":Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;
    iget-boolean v1, v0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->isChecked:Z

    if-nez v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->this$0:Lcom/flyme/deviceoriginalsettings/HomeSettings;

    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/HomeSettings;->makeCurrentHome(Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;)V

    .line 327
    .end local v0    # "pref":Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method setChecked(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->isChecked:Z

    if-eq p1, v0, :cond_0

    .line 313
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->isChecked:Z

    .line 314
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/HomeSettings$HomeAppPreference;->notifyChanged()V

    .line 316
    :cond_0
    return-void
.end method
