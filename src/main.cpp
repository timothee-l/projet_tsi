/*****************************************************************************\
 * TP CPE, 4ETI, TP synthese d'images
 * --------------
 *
 * Programme principal des appels OpenGL
 \*****************************************************************************/

#include "declaration.h"
#include <stdlib.h>
#include <math.h>

//identifiant des shaders
GLuint shader_program_id;
GLuint gui_program_id;

camera cam;

const int nb_obj = 12;
objet3d obj[nb_obj];

const int nb_text = 5;
text text_to_draw[nb_text];

// parametres trans & rota
float angle = 0;

bool tir_alt = false;
int tir_cooldown = 0;
int tir_enemy_cooldown = 0;

int damage_cd = 0;
int enemy_damage_cd = 0;

int pv = 3;
int ennemis = 1;
int score = 0;

int dir_cooldown = 0;
float ennemi_dx = 0.5f;

int blink = 0;
int blink_j = 0;

int enemy_hp = 0;

int difficulte = 1; // La difficulté (vitesse de l'ennemi, vitesse des tirs ennemis et fréquence des tirs ennemis)
int time_c = 1;
/*****************************************************************************\
* initialisation                                                              *
\*****************************************************************************/
static void init()
{
  srand(time(NULL));
  shader_program_id = glhelper::create_program_from_file("shaders/shader.vert", "shaders/shader.frag"); CHECK_GL_ERROR();

  cam.projection = matrice_projection(60.0f*M_PI/180.0f,1.0f,0.01f,100.0f);
  cam.tr.translation = vec3(0.0f, 1.0f, 0.0f);

  init_model_2();

  init_model_joueur1();

  init_ennemi_tank();

  gui_program_id = glhelper::create_program_from_file("shaders/gui.vert", "shaders/gui.frag"); CHECK_GL_ERROR();

 // Affichage tête haute
  char l1[20];
  sprintf(l1, "PV: %d",pv);
  char l2[20];
  sprintf(l2, "Ennemis: %d",ennemis);
  char l3[20];
  sprintf(l3, "Score: %d",score);
  char l4[20];
  sprintf(l4, "Game Over");

  char l5[20];
  sprintf(l5, "Difficulté: %d",difficulte);
  text_to_draw[0].value = l1;
  text_to_draw[0].bottomLeft = vec2(-1.0, 0.9);
  text_to_draw[0].topRight = vec2(-0.68, 1.0);
  init_text(text_to_draw);

  text_to_draw[1]=text_to_draw[0];
  text_to_draw[1].value = l2;
  text_to_draw[1].bottomLeft = vec2(-1.0,0.8);
  text_to_draw[1].topRight = vec2(-0.5,0.9);

  text_to_draw[2]=text_to_draw[0];
  text_to_draw[2].value = l3; 
  text_to_draw[2].bottomLeft = vec2(-1.0,0.7);
  text_to_draw[2].topRight = vec2(-0.6,0.8);

  text_to_draw[3]=text_to_draw[0];
  text_to_draw[3].value = l4; 
  text_to_draw[3].bottomLeft = vec2(-0.5,-0.25);
  text_to_draw[3].topRight = vec2(0.5,0.25);
  text_to_draw[3].visible = false;

  text_to_draw[4]=text_to_draw[0];
  text_to_draw[4].value = l5; 
  text_to_draw[4].bottomLeft = vec2(-1.0,0.6);
  text_to_draw[4].topRight = vec2(-0.1,0.7);
}

/*****************************************************************************\
* display_callback                                                           *
\*****************************************************************************/
 static void display_callback()
{
  glClearColor(0.5f, 0.6f, 0.9f, 1.0f); CHECK_GL_ERROR();
  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT); CHECK_GL_ERROR();

  char l1[20];
  sprintf(l1, "PV: %d",pv);
  char l2[20];
  sprintf(l2, "Ennemis: %d",ennemis);
  char l3[20];
  sprintf(l3, "Score: %d",score);
  char l4[20];
  sprintf(l4, "Difficulte: %d",difficulte);
  text_to_draw[0].value = l1;
  text_to_draw[1].value = l2;
  text_to_draw[2].value = l3; 
  text_to_draw[4].value = l4; 


  for(int i = 0; i < nb_obj; ++i)
    draw_obj3d(obj + i, cam);

  for(int i = 0; i < nb_text; ++i)
    draw_text(text_to_draw + i);

  glutSwapBuffers();
}

/*****************************************************************************\
* keyboard_callback                                                           *
\*****************************************************************************/
static void keyboard_callback(unsigned char key, int, int)
{
  float d_angle=0.1f;
  float d_trans=0.1f;
  float translation_x = 0;
  float translation_z =0;
  switch (key)
  {
    case 'p':
      glhelper::print_screen();
      break;
    case 'e':
      angle -= d_angle;
      break;
    case 'a':
      angle += d_angle;
      break;
    case 'q':
      translation_x = -d_trans;
      break;
    case 'd':
      translation_x = d_trans;
      break;
    case 'z':
      translation_z = -d_trans;
      break;
    case 's':
      translation_z = d_trans;
      break;
    case ' ': 
      tir();
      break;
    case 'x':
    case 'X':
    case 27:
      exit(0);
      break;
  }
 //Rotation de la tourelle et du canon
  obj[4].tr.rotation_euler = vec3(0.0f,angle,0.0f);
  obj[5].tr.rotation_euler = vec3(0.0f,angle,0.0f);

 //Translation de l'ensemble du tank
  obj[3].tr.translation += vec3(translation_x, 0.0, translation_z);
  obj[4].tr.translation += vec3(translation_x, 0.0, translation_z);
  obj[5].tr.translation += vec3(translation_x, 0.0, translation_z);
  cam.tr.translation += vec3(translation_x, 0.0, translation_z);


}

/*****************************************************************************\
* special_callback                                                            *
\*****************************************************************************/
static void special_callback(int key, int, int)
{
}


/*****************************************************************************\
* timer_callback                                                              *
\*****************************************************************************/
static void timer_callback(int)
{
  time_c++;
  if (time_c>800*difficulte){
    printf("diff +\n");
    if(difficulte < 6){
      difficulte++;
    }
  }
  glutTimerFunc(25, timer_callback, 0);

 //Déplacement des projectiles
  mat4 rotation_x = matrice_rotation(obj[6].tr.rotation_euler.x, 1.0f, 0.0f, 0.0f);
  mat4 rotation_y = matrice_rotation(obj[6].tr.rotation_euler.y, 0.0f, 1.0f, 0.0f);
  mat4 rotation_z = matrice_rotation(obj[6].tr.rotation_euler.z, 0.0f, 0.0f, 1.0f);
  mat4 rotation = rotation_x * rotation_y * rotation_z;
  obj[6].tr.translation -= rotation * vec3(0.0,0.0,0.25);

  rotation_x = matrice_rotation(obj[7].tr.rotation_euler.x, 1.0f, 0.0f, 0.0f);
  rotation_y = matrice_rotation(obj[7].tr.rotation_euler.y, 0.0f, 1.0f, 0.0f);
  rotation_z = matrice_rotation(obj[7].tr.rotation_euler.z, 0.0f, 0.0f, 1.0f);
  rotation = rotation_x * rotation_y * rotation_z;
  obj[7].tr.translation -= rotation * vec3(0.0,0.0,0.25);

  rotation_x = matrice_rotation(obj[11].tr.rotation_euler.x, 1.0f, 0.0f, 0.0f);
  rotation_y = matrice_rotation(obj[11].tr.rotation_euler.y, 0.0f, 1.0f, 0.0f);
  rotation_z = matrice_rotation(obj[11].tr.rotation_euler.z, 0.0f, 0.0f, 1.0f);
  rotation = rotation_x * rotation_y * rotation_z;
  obj[11].tr.translation -= rotation * vec3(0.0,0.0,0.15+(difficulte*0.03));

  if(tir_cooldown > 0){
    tir_cooldown --;
  }

  if(tir_enemy_cooldown >0){
    tir_enemy_cooldown --;
  }

  if(enemy_damage_cd >0){
    enemy_damage_cd --;
  }

  if(damage_cd >0){
    damage_cd --;
  }

  //Changement aléatoire de direction
  dir_cooldown --;
  if(dir_cooldown <= 0){
    dir_cooldown = 100;
    ennemi_dx = -0.02+(difficulte*0.005);
    if((rand()%2) == 0){
      ennemi_dx = 0.02+(difficulte*0.005); //direction gauche
    }
  }
 //Déclenchement d'un tir de manière aléatoire
  if(tir_enemy_cooldown <=0){
    double r = rand();
    double seuil = RAND_MAX * pow(2,difficulte) / 256;
    if(r<seuil){//Probabilité de tir (hors temps min.), min. 1 chance sur 64 max 1 sur 1
      ennemi_tir();
    }
  }
 
  obj[8].tr.translation.x+=ennemi_dx;
  obj[9].tr.translation.x+=ennemi_dx;
  obj[10].tr.translation.x+=ennemi_dx;

  //Calcul de l'angle de rotation du canon de l'ennemi pour viser le joueur
  vec3  v_dir = (obj[4].tr.translation - obj[10].tr.translation);
  v_dir /= norm(v_dir);
  float theta = acos(dot(v_dir,vec3(0.0f,0.0f,-1.0f)));
  theta = abs(theta);
  float signe_theta = -dot(cross(v_dir,vec3(0.0f,1.0f,0.0f)),vec3(0.0f,0.0f,1.0f));
  signe_theta /= abs(signe_theta);
  theta = theta * signe_theta;

  //On applique la rotation
  obj[9].tr.rotation_euler = vec3(0.0f,theta,0.0f);
  obj[10].tr.rotation_euler  = vec3(0.0f,theta,0.0f);

  //Detection tir joueur

  //Verfication anti-double détection avec un cooldown
  if(!(enemy_damage_cd>0)){ 
    for (int i=0; i<2;i++){
      vec3  v_dir = (obj[9].tr.translation - obj[i+6].tr.translation);
      if((norm(v_dir)<0.3f)&&obj[i+6].visible){
        enemy_damage_cd = 5;
        if(enemy_hp == 1){
            //Nouvel ennemi
            score += 100*difficulte;
            init_ennemi_tank();
        }
        enemy_hp --;
       //On applique temporairement une texture rouge
        obj[9].texture_id = glhelper::load_texture("data/rouge.tga");
        obj[10].texture_id = glhelper::load_texture("data/rouge.tga");
        obj[8].texture_id = glhelper::load_texture("data/rouge.tga");
        blink = 5;
      }
    }
  }

  blink--;
 //A la fin du délai, on retourne à la texture par défaut
  if(blink==1){
      obj[9].texture_id = glhelper::load_texture("data/camo.tga");
      obj[10].texture_id = glhelper::load_texture("data/camo.tga");
      obj[8].texture_id = glhelper::load_texture("data/camo.tga");
  }

//Detection tir ennemi

//Verfication anti-double détection avec un cooldown
if(!(damage_cd > 0)){
  v_dir = (obj[4].tr.translation - obj[11].tr.translation);
  if((norm(v_dir)<0.3f)&&obj[11].visible){
    damage_cd = 5;
    if(pv == 1){
      for(int i = 0; i < nb_obj; ++i){ //gameover
        obj[i].visible = false;
        text_to_draw[3].visible = true;
      }
    }
    pv --;
    obj[3].texture_id = glhelper::load_texture("data/rouge.tga");
    obj[4].texture_id = glhelper::load_texture("data/rouge.tga");
    obj[5].texture_id = glhelper::load_texture("data/rouge.tga");
    blink_j = 5;
  }
 //Même méthode pour le joueur
  blink_j--;
  if(blink_j==1){
      obj[3].texture_id = glhelper::load_texture("data/camo.tga");
      obj[4].texture_id = glhelper::load_texture("data/camo.tga");
      obj[5].texture_id = glhelper::load_texture("data/camo.tga");
  }
}


  glutPostRedisplay();
}


/*****************************************************************************\
* main                                                                         *
\*****************************************************************************/
int main(int argc, char** argv)
{
  glutInit(&argc, argv);
  glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB | GLUT_DEPTH | MACOSX_COMPATIBILITY);
  glutInitWindowSize(600, 600);
  glutCreateWindow("OpenGL");

  glutDisplayFunc(display_callback);
  glutKeyboardFunc(keyboard_callback);
  glutSpecialFunc(special_callback);
  glutTimerFunc(25, timer_callback, 0);

  glewExperimental = true;
  glewInit();

  std::cout << "OpenGL: " << (GLchar *)(glGetString(GL_VERSION)) << std::endl;

  init();
  glutMainLoop();

  return 0;
}

/*****************************************************************************\
* draw_text                                                                   *
\*****************************************************************************/
void draw_text(const text * const t)
{
  if(!t->visible) return;
  
  glDisable(GL_DEPTH_TEST);
  glUseProgram(t->prog);

  vec2 size = (t->topRight - t->bottomLeft);
  size.x /= float(t->value.size());
  
  GLint loc_size = glGetUniformLocation(gui_program_id, "size"); CHECK_GL_ERROR();
  if (loc_size == -1) std::cerr << "Pas de variable uniforme : size" << std::endl;
  glUniform2f(loc_size,size.x, size.y);     CHECK_GL_ERROR();

  glBindVertexArray(t->vao);                CHECK_GL_ERROR();
  
  for(unsigned i = 0; i < t->value.size(); ++i)
  {
    GLint loc_start = glGetUniformLocation(gui_program_id, "start"); CHECK_GL_ERROR();
    if (loc_start == -1) std::cerr << "Pas de variable uniforme : start" << std::endl;
    glUniform2f(loc_start,t->bottomLeft.x+i*size.x, t->bottomLeft.y);    CHECK_GL_ERROR();

    GLint loc_char = glGetUniformLocation(gui_program_id, "c"); CHECK_GL_ERROR();
    if (loc_char == -1) std::cerr << "Pas de variable uniforme : c" << std::endl;
    glUniform1i(loc_char, (int)t->value[i]);    CHECK_GL_ERROR();
    glBindTexture(GL_TEXTURE_2D, t->texture_id);                            CHECK_GL_ERROR();
    glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);                    CHECK_GL_ERROR();
  }
}

/*****************************************************************************\
* draw_obj3d                                                                  *
\*****************************************************************************/
void draw_obj3d(const objet3d* const obj, camera cam)
{
  if(!obj->visible) return;

  glEnable(GL_DEPTH_TEST);
  glUseProgram(obj->prog);
  
  {
    GLint loc_projection = glGetUniformLocation(shader_program_id, "projection"); CHECK_GL_ERROR();
    if (loc_projection == -1) std::cerr << "Pas de variable uniforme : projection" << std::endl;
    glUniformMatrix4fv(loc_projection,1,false,pointeur(cam.projection));    CHECK_GL_ERROR();

    GLint loc_rotation_view = glGetUniformLocation(shader_program_id, "rotation_view"); CHECK_GL_ERROR();
    if (loc_rotation_view == -1) std::cerr << "Pas de variable uniforme : rotation_view" << std::endl;
    mat4 rotation_x = matrice_rotation(cam.tr.rotation_euler.x, 1.0f, 0.0f, 0.0f);
    mat4 rotation_y = matrice_rotation(cam.tr.rotation_euler.y, 0.0f, 1.0f, 0.0f);
    mat4 rotation_z = matrice_rotation(cam.tr.rotation_euler.z, 0.0f, 0.0f, 1.0f);
    glUniformMatrix4fv(loc_rotation_view,1,false,pointeur(rotation_x*rotation_y*rotation_z));    CHECK_GL_ERROR();

    vec3 cv = cam.tr.rotation_center;
    GLint loc_rotation_center_view = glGetUniformLocation(shader_program_id, "rotation_center_view"); CHECK_GL_ERROR();
    if (loc_rotation_center_view == -1) std::cerr << "Pas de variable uniforme : rotation_center_view" << std::endl;
    glUniform4f(loc_rotation_center_view , cv.x,cv.y,cv.z , 0.0f); CHECK_GL_ERROR();

    vec3 tv = cam.tr.translation;
    GLint loc_translation_view = glGetUniformLocation(shader_program_id, "translation_view"); CHECK_GL_ERROR();
    if (loc_translation_view == -1) std::cerr << "Pas de variable uniforme : translation_view" << std::endl;
    glUniform4f(loc_translation_view , tv.x,tv.y,tv.z , 0.0f); CHECK_GL_ERROR();
  }
  {
    GLint loc_rotation_model = glGetUniformLocation(obj->prog, "rotation_model"); CHECK_GL_ERROR();
    if (loc_rotation_model == -1) std::cerr << "Pas de variable uniforme : rotation_model" << std::endl;
    mat4 rotation_x = matrice_rotation(obj->tr.rotation_euler.x, 1.0f, 0.0f, 0.0f);
    mat4 rotation_y = matrice_rotation(obj->tr.rotation_euler.y, 0.0f, 1.0f, 0.0f);
    mat4 rotation_z = matrice_rotation(obj->tr.rotation_euler.z, 0.0f, 0.0f, 1.0f);
    glUniformMatrix4fv(loc_rotation_model,1,false,pointeur(rotation_x*rotation_y*rotation_z));    CHECK_GL_ERROR();

    vec3 c = obj->tr.rotation_center;
    GLint loc_rotation_center_model = glGetUniformLocation(obj->prog, "rotation_center_model");   CHECK_GL_ERROR();
    if (loc_rotation_center_model == -1) std::cerr << "Pas de variable uniforme : rotation_center_model" << std::endl;
    glUniform4f(loc_rotation_center_model , c.x,c.y,c.z , 0.0f);                                  CHECK_GL_ERROR();

    vec3 t = obj->tr.translation;
    GLint loc_translation_model = glGetUniformLocation(obj->prog, "translation_model"); CHECK_GL_ERROR();
    if (loc_translation_model == -1) std::cerr << "Pas de variable uniforme : translation_model" << std::endl;
    glUniform4f(loc_translation_model , t.x,t.y,t.z , 0.0f);                                     CHECK_GL_ERROR();
  }
  glBindVertexArray(obj->vao);                                              CHECK_GL_ERROR();

  glBindTexture(GL_TEXTURE_2D, obj->texture_id);                            CHECK_GL_ERROR();
  glDrawElements(GL_TRIANGLES, 3*obj->nb_triangle, GL_UNSIGNED_INT, 0);     CHECK_GL_ERROR();
}

void init_text(text *t){
  vec3 p0=vec3( 0.0f, 0.0f, 0.0f);
  vec3 p1=vec3( 0.0f, 1.0f, 0.0f);
  vec3 p2=vec3( 1.0f, 1.0f, 0.0f);
  vec3 p3=vec3( 1.0f, 0.0f, 0.0f);

  vec3 geometrie[4] = {p0, p1, p2, p3}; 
  triangle_index index[2] = { triangle_index(0, 1, 2), triangle_index(0, 2, 3)};

  glGenVertexArrays(1, &(t->vao));                                              CHECK_GL_ERROR();
  glBindVertexArray(t->vao);                                                  CHECK_GL_ERROR();

  GLuint vbo;
  glGenBuffers(1, &vbo);                                                       CHECK_GL_ERROR();
  glBindBuffer(GL_ARRAY_BUFFER,vbo);                                          CHECK_GL_ERROR();
  glBufferData(GL_ARRAY_BUFFER,sizeof(geometrie),geometrie,GL_STATIC_DRAW);   CHECK_GL_ERROR();

  glEnableVertexAttribArray(0); CHECK_GL_ERROR();
  glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, 0); CHECK_GL_ERROR();

  GLuint vboi;
  glGenBuffers(1,&vboi);                                                      CHECK_GL_ERROR();
  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,vboi);                                 CHECK_GL_ERROR();
  glBufferData(GL_ELEMENT_ARRAY_BUFFER,sizeof(index),index,GL_STATIC_DRAW);   CHECK_GL_ERROR();

  t->texture_id = glhelper::load_texture("data/fontB.tga");

  t->visible = true;
  t->prog = gui_program_id;
}

GLuint upload_mesh_to_gpu(const mesh& m)
{
  GLuint vao, vbo, vboi;
  glGenVertexArrays(1, &vao);
  glBindVertexArray(vao);

  glGenBuffers(1,&vbo);                                 CHECK_GL_ERROR();
  glBindBuffer(GL_ARRAY_BUFFER,vbo); CHECK_GL_ERROR();
  glBufferData(GL_ARRAY_BUFFER,m.vertex.size()*sizeof(vertex_opengl),&m.vertex[0],GL_STATIC_DRAW); CHECK_GL_ERROR();

  glEnableVertexAttribArray(0); CHECK_GL_ERROR();
  glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(vertex_opengl), 0); CHECK_GL_ERROR();

  glEnableVertexAttribArray(1); CHECK_GL_ERROR();
  glVertexAttribPointer(1, 3, GL_FLOAT, GL_TRUE, sizeof(vertex_opengl), (void*)sizeof(vec3)); CHECK_GL_ERROR();

  glEnableVertexAttribArray(2); CHECK_GL_ERROR();
  glVertexAttribPointer(2, 3, GL_FLOAT, GL_FALSE, sizeof(vertex_opengl), (void*)(2*sizeof(vec3))); CHECK_GL_ERROR();

  glEnableVertexAttribArray(3); CHECK_GL_ERROR();
  glVertexAttribPointer(3, 2, GL_FLOAT, GL_FALSE, sizeof(vertex_opengl), (void*)(3*sizeof(vec3))); CHECK_GL_ERROR();

  glGenBuffers(1,&vboi); CHECK_GL_ERROR();
  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,vboi); CHECK_GL_ERROR();
  glBufferData(GL_ELEMENT_ARRAY_BUFFER,m.connectivity.size()*sizeof(triangle_index),&m.connectivity[0],GL_STATIC_DRAW); CHECK_GL_ERROR();

  return vao;
}

void init_model_1()
{
  // Chargement d'un maillage a partir d'un fichier
  mesh m = load_obj_file("data/stegosaurus.obj");

  // Affecte une transformation sur les sommets du maillage
  float s = 0.2f;
  mat4 transform = mat4(   s, 0.0f, 0.0f, 0.0f,
      0.0f,    s, 0.0f, 0.0f,
      0.0f, 0.0f,   s , 0.0f,
      0.0f, 0.0f, 0.0f, 1.0f);
  apply_deformation(&m,transform);

  // Centre la rotation du modele 1 autour de son centre de gravite approximatif
  obj[0].tr.rotation_center = vec3(0.0f,0.0f,0.0f);

  update_normals(&m);
  fill_color(&m,vec3(1.0f,1.0f,1.0f));

  obj[0].vao = upload_mesh_to_gpu(m);

  obj[0].nb_triangle = m.connectivity.size();
  obj[0].texture_id = glhelper::load_texture("data/stegosaurus.tga");
  obj[0].visible = false;
  obj[0].prog = shader_program_id;

  obj[0].tr.translation = vec3(-200.0, 0.0, -10.0);
}

void init_model_2()
{

  mesh m;

  //coordonnees geometriques des sommets
  vec3 p0=vec3(-25.0f,0.0f,-25.0f);
  vec3 p1=vec3( 25.0f,0.0f,-25.0f);
  vec3 p2=vec3( 25.0f,0.0f, 25.0f);
  vec3 p3=vec3(-25.0f,0.0f, 25.0f);

  //normales pour chaque sommet
  vec3 n0=vec3(0.0f,1.0f,0.0f);
  vec3 n1=n0;
  vec3 n2=n0;
  vec3 n3=n0;

  //couleur pour chaque sommet
  vec3 c0=vec3(1.0f,1.0f,1.0f);
  vec3 c1=c0;
  vec3 c2=c0;
  vec3 c3=c0;

  //texture du sommet
  vec2 t0=vec2(0.0f,0.0f);
  vec2 t1=vec2(1.0f,0.0f);
  vec2 t2=vec2(1.0f,1.0f);
  vec2 t3=vec2(0.0f,1.0f);

  vertex_opengl v0=vertex_opengl(p0,n0,c0,t0);
  vertex_opengl v1=vertex_opengl(p1,n1,c1,t1);
  vertex_opengl v2=vertex_opengl(p2,n2,c2,t2);
  vertex_opengl v3=vertex_opengl(p3,n3,c3,t3);

  m.vertex = {v0, v1, v2, v3};

  //indice des triangles
  triangle_index tri0=triangle_index(0,1,2);
  triangle_index tri1=triangle_index(0,2,3);  
  m.connectivity = {tri0, tri1};

  obj[1].nb_triangle = 2;
  obj[1].vao = upload_mesh_to_gpu(m);

  obj[1].texture_id = glhelper::load_texture("data/grass.tga");

  obj[1].visible = true;
  obj[1].prog = shader_program_id;
}


void init_model_3()
{
  // Chargement d'un maillage a partir d'un fichier
  mesh m = load_off_file("data/armadillo_light.off");

  // Affecte une transformation sur les sommets du maillage
  float s = 0.01f;
  mat4 transform = mat4(   s, 0.0f, 0.0f, 0.0f,
      0.0f,    s, 0.0f, 0.50f,
      0.0f, 0.0f,   s , 0.0f,
      0.0f, 0.0f, 0.0f, 1.0f);
  apply_deformation(&m,matrice_rotation(M_PI/2.0f,1.0f,0.0f,0.0f));
  apply_deformation(&m,matrice_rotation(M_PI,0.0f,1.0f,0.0f));
  apply_deformation(&m,transform);

  update_normals(&m);
  fill_color(&m,vec3(1.0f,1.0f,1.0f));

  obj[2].vao = upload_mesh_to_gpu(m);

  obj[2].nb_triangle = m.connectivity.size();
  obj[2].texture_id = glhelper::load_texture("data/white.tga");

  obj[2].visible = true;
  obj[2].prog = shader_program_id;

  obj[2].tr.translation = vec3(2.0, 0.0, -10.0);
}

void init_model_joueur1(){
  init_model_grand_cube();
  init_model_petit_cube();
  init_model_canon();
  init_model_tir();
}

void init_model_grand_cube(){
  // Chargement d'un maillage a partir d'un fichier
  mesh m = load_obj_file("data/cube.obj");

  // Affecte une transformation sur les sommets du maillage
  float s = 0.4f;
  mat4 transform = mat4(1*s, 0.0f, 0.0f, 0.0f,
      0.0f,    1*s, 0.0f, 0.0f,
      0.0f, 0.0f,   1.5*s , 0.0f,
      0.0f, 0.0f, 0.0f, 1.0f);
  apply_deformation(&m,transform);

  update_normals(&m);
  fill_color(&m,vec3(1.0f,1.0f,1.0f));

  obj[3].vao = upload_mesh_to_gpu(m);

  obj[3].nb_triangle = m.connectivity.size();
  obj[3].texture_id = glhelper::load_texture("data/camo.tga");
  obj[3].visible = true;
  obj[3].prog = shader_program_id;

  obj[3].tr.translation = vec3(0.0, 0.0, -2.0);
}

void init_model_petit_cube(){
  // Chargement d'un maillage a partir d'un fichier
  mesh m = load_obj_file("data/cube.obj");

  // Affecte une transformation sur les sommets du maillage
  float s = 0.2f;
  mat4 transform = mat4(1*s, 0.0f, 0.0f, 0.0f,
      0.0f,    1*s, 0.0f, 0.0f,
      0.0f, 0.0f,   1.5*s , 0.0f,
      0.0f, 0.0f, 0.0f, 1.0f);
  apply_deformation(&m,transform);

  update_normals(&m);
  fill_color(&m,vec3(1.0f,1.0f,1.0f));


  obj[4].vao = upload_mesh_to_gpu(m);

  obj[4].nb_triangle = m.connectivity.size();
  obj[4].texture_id = glhelper::load_texture("data/camo.tga");
  obj[4].visible = true;
  obj[4].prog = shader_program_id;

  obj[4].tr.translation = vec3(0.0, 0.4, -2.0);
}

void init_model_canon(){
  // Chargement d'un maillage a partir d'un fichier
  mesh m = load_obj_file("data/cube.obj");

  // Affecte une transformation sur les sommets du maillage
  float s = 0.2f;
  mat4 transform = mat4(0.15*s, 0.0f, 0.0f, 0.0f,
      0.0f,    0.15*s, 0.0f, 0.0f,
      0.0f, 0.0f,   5*s , 0.0f,
      0.0f, 0.0f, 0.0f, 1.0f);
  apply_deformation(&m,transform);

  update_normals(&m);
  fill_color(&m,vec3(1.0f,1.0f,1.0f));


  obj[5].vao = upload_mesh_to_gpu(m);

  obj[5].nb_triangle = m.connectivity.size();
  obj[5].texture_id = glhelper::load_texture("data/camo.tga");
  obj[5].visible = true;
  obj[5].prog = shader_program_id;

  obj[5].tr.translation = vec3(0.0, 0.45, -3.0);
  obj[5].tr.rotation_center = vec3(0.0,0.0,1);
}
void init_model_tir(){
  // Chargement d'un maillage a partir d'un fichier
  mesh m = load_obj_file("data/cube.obj");

  // Affecte une transformation sur les sommets du maillage

  float s = 0.2f;
  mat4 transform = mat4(0.13*s, 0.0f, 0.0f, 0.0f,
      0.0f,    0.13*s, 0.0f, 0.0f,
      0.0f, 0.0f,   0.5*s , 0.0f,
      0.0f, 0.0f, 0.0f, 1.0f);
  apply_deformation(&m,transform);

  update_normals(&m);
  fill_color(&m,vec3(1.0f,0.0f,0.0f));


  obj[6].vao = upload_mesh_to_gpu(m);

  obj[6].nb_triangle = m.connectivity.size();
  obj[6].texture_id = glhelper::load_texture("data/rouge.tga");
  obj[6].visible = false; //Invisible jusqu'au tir
  obj[6].prog = shader_program_id;

  obj[6].tr.translation = vec3(0.0, 0.45, -3.0);
  obj[6].tr.rotation_center = vec3(0.0,0.0,1);

  obj[7] = obj[6]; //on clone le tir et les deux objets s'alternent
  obj[7].texture_id = glhelper::load_texture("data/white.tga");

}

void tir(){

  if (tir_cooldown > 0){return;}

  tir_alt = !tir_alt;
  tir_cooldown = 30;
  if(tir_alt){
    obj[6].visible = true;
    obj[6].tr.translation = obj[5].tr.translation;
    obj[6].tr.rotation_center = obj[5].tr.rotation_center;
    obj[6].tr.rotation_euler =  obj[5].tr.rotation_euler;
  }else{
    obj[7].visible = true;
    obj[7].tr.translation = obj[5].tr.translation;
    obj[7].tr.rotation_center = obj[5].tr.rotation_center;
    obj[7].tr.rotation_euler =  obj[5].tr.rotation_euler;
  }

  return;
}

void init_ennemi_tank(){
  //clonage obj 3,4,5
  enemy_hp = 3;
  obj[8] = obj[3];
  obj[9] = obj[4];
  obj[10] = obj[5];
  obj[8].tr.translation += vec3(-2.0, 0.0, -10.0);
  obj[9].tr.translation += vec3(-2.0, 0.0, -10.0);
  obj[10].tr.translation += vec3(-2.0, 0.0, -10.0);
  init_ennemi_tir();
  return;
}

void init_ennemi_tir(){
  obj[11] = obj[6]; //Clone du tir du joueur
  obj[11].texture_id = glhelper::load_texture("data/white.tga");
}

void ennemi_tir(){
  if (tir_enemy_cooldown > 0){return;}

  tir_enemy_cooldown = 30;
  obj[11].visible = true;
  obj[11].tr.translation = obj[10].tr.translation;
  obj[11].tr.rotation_center = obj[10].tr.rotation_center;
  obj[11].tr.rotation_euler =  obj[10].tr.rotation_euler;
}
