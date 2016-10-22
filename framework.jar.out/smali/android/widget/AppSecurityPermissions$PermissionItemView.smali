.class public Landroid/widget/AppSecurityPermissions$PermissionItemView;
.super Landroid/widget/LinearLayout;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionItemView"
.end annotation


# instance fields
.field mDialog:Landroid/app/AlertDialog;

.field mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

.field private mPackageName:Ljava/lang/String;

.field mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

.field private mShowRevokeUI:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setClickable(Z)V

    .line 157
    return-void
.end method

.method static synthetic access$000(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .prologue
    .line 147
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private addRevokeUIIfNecessary(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 251
    iget-boolean v2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    if-nez v2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget v2, v2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 258
    .local v0, "isRequired":Z
    :goto_1
    if-nez v0, :cond_0

    .line 262
    new-instance v1, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;

    invoke-direct {v1, p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;-><init>(Landroid/widget/AppSecurityPermissions$PermissionItemView;)V

    .line 270
    .local v1, "ocl":Landroid/content/DialogInterface$OnClickListener;
    const v2, 0x104061b

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 271
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 255
    .end local v0    # "isRequired":Z
    .end local v1    # "ocl":Landroid/content/DialogInterface$OnClickListener;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 208
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    if-eqz v6, :cond_1

    .line 209
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 210
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 212
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 213
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 214
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    iget-object v6, v6, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 215
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget v6, v6, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->descriptionRes:I

    if-eqz v6, :cond_2

    .line 216
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    invoke-virtual {v6, v4}, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 232
    :goto_0
    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 236
    invoke-direct {p0, v2}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->addRevokeUIIfNecessary(Landroid/app/AlertDialog$Builder;)V

    .line 237
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    .line 238
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 240
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    return-void

    .line 220
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_0
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v6, v6, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 221
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 225
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .local v1, "appName":Ljava/lang/CharSequence;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 226
    .local v5, "sbuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10404ec

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v6, v6, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 222
    .end local v1    # "appName":Ljava/lang/CharSequence;
    .end local v5    # "sbuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 223
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v1, v6, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->packageName:Ljava/lang/String;

    .restart local v1    # "appName":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 245
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 248
    :cond_0
    return-void
.end method

.method public setPermission(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "grp"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .param p2, "perm"    # Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .param p3, "first"    # Z
    .param p4, "newPermPrefix"    # Ljava/lang/CharSequence;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "showRevokeUI"    # Z

    .prologue
    .line 162
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 163
    iput-object p2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    .line 164
    move/from16 v0, p6

    iput-boolean v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    .line 165
    move-object/from16 v0, p5

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPackageName:Ljava/lang/String;

    .line 167
    const v9, 0x10202e0

    invoke-virtual {p0, v9}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 168
    .local v4, "permGrpIcon":Landroid/widget/ImageView;
    const v9, 0x10202e1

    invoke-virtual {p0, v9}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 170
    .local v5, "permNameView":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 171
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 172
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_0

    .line 173
    invoke-virtual {p1, v6}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadGroupIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 175
    :cond_0
    iget-object v2, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 176
    .local v2, "label":Ljava/lang/CharSequence;
    iget-boolean v9, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    if-eqz v9, :cond_1

    if-eqz p4, :cond_1

    .line 180
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 181
    .local v8, "ssbuilder":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 182
    invoke-virtual {v8, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 183
    new-instance v7, Landroid/text/SpannableString;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 184
    .local v7, "spn":Landroid/text/SpannableString;
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 185
    .local v3, "len":I
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const-string v10, "#ff33b5e5"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v10, 0x0

    const/16 v11, 0x12

    invoke-virtual {v7, v9, v10, v3, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 186
    move-object v2, v7

    .line 199
    .end local v3    # "len":I
    .end local v7    # "spn":Landroid/text/SpannableString;
    .end local v8    # "ssbuilder":Landroid/text/SpannableStringBuilder;
    :cond_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {p0, p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    return-void
.end method
